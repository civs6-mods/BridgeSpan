-- The stock panel includes MapSearchPanel_* extensions before it initializes.
include("BS_VisibleBuildings");
local basePopulate=PopulateSuggestionData;
function PopulateSuggestionData()
    local native=Search;
    local bridgeNames={
        [Locale.Lookup("LOC_DISTRICT_BS_1_NAME")]=true,
        [Locale.Lookup("LOC_DISTRICT_BS_2_NAME")]=true,
    };
    local seen={};
    -- Scope the adapter to this panel's synchronous index build. Keep the
    -- full plot index and other providers' suggestion entries intact.
    Search=setmetatable({AddData=function(context,id,title,...)
        if context==SEARCHCONTEXT_SUGGESTIONS and id==title and bridgeNames[id] then
            if seen[id] then return;end
            seen[id]=true;
        end
        return native.AddData(context,id,title,...);
    end},{__index=native});
    local ok,err=pcall(basePopulate);
    Search=native;
    if not ok then error(err);end
end

local basePlotTerms=GetPlotSearchTerms;
function GetPlotSearchTerms(data)
    -- Every internal crossing marker is named Stone Bridge, even under sea
    -- bridges. Index the visible district and preserve any real buildings.
    BS_RemoveCrossingMarkers(data);
    return basePlotTerms(data);
end
