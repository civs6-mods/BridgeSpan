"""Build the installable ZIP and, for a release tag, its GitHub release notes."""
import argparse
import hashlib
from pathlib import Path
import re
from zipfile import ZIP_DEFLATED, ZipFile, ZipInfo

from verify import ROOT, verify


def release_notes(version):
    changelog = (ROOT / "CHANGELOG.md").read_text(encoding="utf-8")
    section = re.search(r"^## (\d+)(?: \([^\n)]+\))?\n(.*?)(?=^## |\Z)",
                        changelog, flags=re.MULTILINE | re.DOTALL)
    if not section or section[1] != str(version) or not section[2].strip():
        raise ValueError(f"Add the v{version} entry at the top of CHANGELOG.md")
    return section[2].strip() + "\n"


def build_zip(target, files):
    # Fixed ZIP metadata keeps checkout times and platform permissions out of the archive.
    with ZipFile(target, "w") as archive:
        for name in sorted(files):
            entry = ZipInfo("BridgeSpan/" + name)
            entry.create_system = 3
            entry.external_attr = 0o100644 << 16
            archive.writestr(entry, (ROOT / "mod" / name).read_bytes(),
                             compress_type=ZIP_DEFLATED, compresslevel=6)

    with ZipFile(target) as archive:
        expected = {"BridgeSpan/" + name: digest for name, digest in files.items()}
        if sorted(archive.namelist()) != sorted(expected):
            raise ValueError("ZIP file list differs from release-manifest.json")
        for name, digest in expected.items():
            if hashlib.sha256(archive.read(name)).hexdigest() != digest:
                raise ValueError(f"ZIP hash mismatch for {name}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--tag", help="Git tag being released, for example v51")
    parser.add_argument("--output-dir", type=Path, default=ROOT / "dist")
    args = parser.parse_args()
    manifest = verify()
    version = manifest["version"]
    tag = f"v{version}"
    if args.tag is not None and args.tag != tag:
        parser.error(f"Tag {args.tag} does not match the mod version {tag}")
    notes = release_notes(version) if args.tag else None
    args.output_dir.mkdir(parents=True, exist_ok=True)
    target = args.output_dir / f"BridgeSpan-{tag}.zip"
    build_zip(target, manifest["files"])
    if notes:
        (args.output_dir / "release-notes.md").write_text(notes, encoding="utf-8")
    print(target)


if __name__ == "__main__":
    main()
