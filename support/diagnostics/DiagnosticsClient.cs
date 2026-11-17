using System;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Web.Script.Serialization;

[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]
[assembly: AssemblyProduct("BridgeSpan Diagnostics")]

sealed class CollectionResult {
    public string Zip;
    public bool HasUsableLogs;
}
sealed class CollectionStatus {
    public bool hasUsableLogs { get; set; }
}

static class DiagnosticsClient {
    [STAThread] static int Main(string[] args) {
        if (args.Length == 2 && args[0] == "--collect-to") {
            try { Collector.Run(Path.GetFullPath(args[1])); return 0; }
            catch (Exception e) { File.WriteAllText(Path.Combine(Path.GetFullPath(args[1]),"collection-error.txt"),e.ToString()); return 1; }
        }
        Application.EnableVisualStyles();
        Application.SetCompatibleTextRenderingDefault(false);
        Application.Run(new SupportWindow());
        return 0;
    }
}
static class Collector {
    public static CollectionResult Run(string output) {
        Directory.CreateDirectory(output);
        string tempRoot = Path.GetFullPath(Path.GetTempPath());
        string temp = Path.Combine(tempRoot,"BridgeSpanDiagnosticClient-"+Guid.NewGuid().ToString("N"));
        Directory.CreateDirectory(temp);
        try {
            string script = Path.Combine(temp,"collector.ps1");
            using(var source=Assembly.GetExecutingAssembly().GetManifestResourceStream("BridgeSpanCollector.ps1"))
            using(var target=File.Create(script)) { if(source==null)throw new Exception("收集组件缺失，请重新下载客户端。");source.CopyTo(target); }
            using(var source=Assembly.GetExecutingAssembly().GetManifestResourceStream("LogContext.ps1"))
            using(var target=File.Create(Path.Combine(temp,"LogContext.ps1"))) { if(source==null)throw new Exception("诊断组件缺失，请重新下载客户端。");source.CopyTo(target); }
            using(var source=Assembly.GetExecutingAssembly().GetManifestResourceStream("Extract-BridgeEvidence.ps1"))
            using(var target=File.Create(Path.Combine(temp,"Extract-BridgeEvidence.ps1"))) { if(source==null)throw new Exception("分析组件缺失，请重新下载客户端。");source.CopyTo(target); }
            string staging=Path.Combine(temp,"output");
            string powershell=Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.System),@"WindowsPowerShell\v1.0\powershell.exe");
            var start=new ProcessStartInfo(powershell,"-NoProfile -NonInteractive -ExecutionPolicy Bypass -File \""+script+"\" -OutputDirectory \""+staging+"\"");
            start.CreateNoWindow=true;start.WindowStyle=ProcessWindowStyle.Hidden;start.UseShellExecute=false;
            start.RedirectStandardOutput=true;start.RedirectStandardError=true;
            // Use Windows' own modules even when launched from a PowerShell 7 host.
            start.EnvironmentVariables["PSModulePath"]=Path.Combine(Path.GetDirectoryName(powershell),"Modules")+";"+Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles),"WindowsPowerShell","Modules");
            var details=new StringBuilder();
            using(var process=new Process()) {
                process.StartInfo=start;
                process.OutputDataReceived+=(s,e)=>{if(e.Data!=null)lock(details)details.AppendLine(e.Data);};
                process.ErrorDataReceived+=(s,e)=>{if(e.Data!=null)lock(details)details.AppendLine(e.Data);};
                process.Start();process.BeginOutputReadLine();process.BeginErrorReadLine();
                if(!process.WaitForExit(90000)) { try{process.Kill();process.WaitForExit();}catch{} throw new Exception("收集用时过长，请稍后重试。"); }
                process.WaitForExit();
                if(process.ExitCode!=0)throw new Exception("未能完成收集。\r\n"+details.ToString().Replace(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),"%USERPROFILE%"));
            }
            var zips=Directory.GetFiles(staging,"*.zip",SearchOption.TopDirectoryOnly);
            if(zips.Length!=1)throw new Exception("未找到生成的诊断包，请重试。");
            var context=new JavaScriptSerializer().Deserialize<CollectionStatus>(File.ReadAllText(Path.Combine(staging,"collection-status.json"),Encoding.UTF8));
            if(context==null)throw new Exception("未找到收集结果，请重新生成诊断包。");
            string destination=Path.Combine(output,"自由造桥-诊断信息-"+DateTime.Now.ToString("yyyyMMdd-HHmmss")+"-"+Guid.NewGuid().ToString("N").Substring(0,6)+".zip");
            File.Move(zips[0],destination);
            return new CollectionResult{Zip=destination,HasUsableLogs=context.hasUsableLogs};
        } finally {
            // Only this invocation's newly generated temporary directory can be removed.
            string full=Path.GetFullPath(temp);
            if(string.Equals(Path.GetDirectoryName(full).TrimEnd(Path.DirectorySeparatorChar),tempRoot.TrimEnd(Path.DirectorySeparatorChar),StringComparison.OrdinalIgnoreCase)
                && Path.GetFileName(full).StartsWith("BridgeSpanDiagnosticClient-",StringComparison.Ordinal)) {
                try{Directory.Delete(full,true);}catch{}
            }
        }
    }
}
sealed class SupportWindow : Form {
    readonly Button collect=new Button(), reveal=new Button(), copy=new Button();
    readonly Label status=new Label(), result=new Label();
    readonly ProgressBar progress=new ProgressBar();
    string zip;
    bool busy;
    public SupportWindow() {
        Text="自由造桥 · 问题诊断 1.0.0";ClientSize=new Size(680,440);StartPosition=FormStartPosition.CenterScreen;
        Font=new Font("Microsoft YaHei UI",10);BackColor=Color.FromArgb(246,248,250);
        FormBorderStyle=FormBorderStyle.FixedDialog;MaximizeBox=false;
        Icon=SystemIcons.Information;AutoScaleMode=AutoScaleMode.Dpi;
        var header=new Panel{BackColor=Color.FromArgb(16,29,42),Location=new Point(0,0),Size=new Size(680,120)};
        header.Controls.Add(new Label{Text="自由造桥 · 问题诊断",ForeColor=Color.FromArgb(245,237,217),Font=new Font(Font.FontFamily,23,FontStyle.Bold),AutoSize=true,Location=new Point(28,20)});
        header.Controls.Add(new Label{Text="遇到报错？生成诊断包，发给作者帮助定位。",ForeColor=Color.FromArgb(214,194,153),AutoSize=true,Location=new Point(31,78)});
        Controls.Add(header);
        Controls.Add(new Label{Text="自动查找日志，整理桥梁相关记录。\r\n完成后会在桌面生成一个压缩包，由你手动发送给作者。",Location=new Point(30,143),Size=new Size(620,56),ForeColor=Color.FromArgb(57,68,80)});
        Controls.Add(new Label{Text="无需安装或管理员权限；不更改游戏、模组和存档。",Location=new Point(30,207),Size=new Size(620,27),ForeColor=Color.FromArgb(102,112,123)});
        collect.Text="生成诊断包";collect.Location=new Point(30,251);collect.Size=new Size(620,48);
        collect.BackColor=Color.FromArgb(23,57,83);collect.ForeColor=Color.White;collect.FlatStyle=FlatStyle.Flat;collect.FlatAppearance.BorderSize=0;collect.Font=new Font(Font.FontFamily,13,FontStyle.Bold);
        collect.Click+=async(s,e)=>await Collect();Controls.Add(collect);
        progress.Location=new Point(30,310);progress.Size=new Size(620,5);progress.Style=ProgressBarStyle.Marquee;progress.Visible=false;Controls.Add(progress);
        status.Text="遇到问题后，点击上方按钮即可。";status.Location=new Point(30,326);status.Size=new Size(620,28);Controls.Add(status);
        result.Location=new Point(30,355);result.Size=new Size(620,22);result.AutoEllipsis=true;result.ForeColor=Color.FromArgb(99,111,122);Controls.Add(result);
        reveal.Text="找到压缩包";reveal.Location=new Point(30,387);reveal.Size=new Size(160,32);reveal.Enabled=false;reveal.Click+=(s,e)=>Process.Start("explorer.exe","/select,\""+zip+"\"");Controls.Add(reveal);
        copy.Text="复制文件路径";copy.Location=new Point(202,387);copy.Size=new Size(160,32);copy.Enabled=false;copy.Click+=(s,e)=>{Clipboard.SetText(zip);status.Text="路径已复制。将压缩包文件发给作者即可。";};Controls.Add(copy);
        FormClosing+=(s,e)=>{if(busy)e.Cancel=true;};
    }
    async Task Collect() {
        busy=true;collect.Enabled=false;reveal.Enabled=false;copy.Enabled=false;progress.Visible=true;
        status.Text="正在查找并整理记录，通常只需几秒钟……";result.Text="";
        try {
            string desktop=Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory);
            var collected=await Task.Run(()=>Collector.Run(desktop));
            zip=collected.Zip;
            status.Text=collected.HasUsableLogs?"收集完成，把这个压缩包发给作者即可。":"未找到可用日志，请在游戏出现问题后再点一次。";result.Text=Path.GetFileName(zip);
            reveal.Enabled=true;copy.Enabled=true;collect.Text="重新生成诊断包";
        } catch(Exception error) {
            status.Text="暂时没收集成功，请将错误内容发给作者。";
            using(var dialog=new Form{Text="收集未完成",StartPosition=FormStartPosition.CenterParent,ClientSize=new Size(570,290),Font=Font}) {
                var text=new TextBox{Multiline=true,ReadOnly=true,ScrollBars=ScrollBars.Vertical,Dock=DockStyle.Fill,Text=error.Message};dialog.Controls.Add(text);dialog.ShowDialog(this);
            }
        } finally {busy=false;collect.Enabled=true;progress.Visible=false;}
    }
}
