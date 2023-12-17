package.path = FileMgr.GetMenuRootPath() .. "\\Lua\\?.lua;"

require("natives/natives")

local MAXN_PLAYERS = 32
local INVALID_PLAYER_INDEX = -1

---@param playerId integer
local function explodePlayer(playerId)
    local pedHnd = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(playerId)

    if ENTITY.DOES_ENTITY_EXIST(pedHnd) then
        local coords = ENTITY.GET_ENTITY_COORDS(pedHnd, true)
        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 4, 1.0, true, false, 1.0, false)
    end
end

FeatureMgr.AddPlayerFeature(Utils.Joaat("LUA_BlockSEs"), "Block Incoming SEs", eFeatureType.Toggle)

local features = FeatureMgr.AddPlayerFeature(Utils.Joaat("LUA_ExplodeLoop"), "Explode Loop", eFeatureType.SliderIntToggle, "Use slider to set explosions delay",
    function(f)
        if f:IsToggled() then
            local playerId = f:GetPlayerIndex()
            explodePlayer(playerId)

            local delay = f:GetIntValue()
            Script.Yield(delay)
        end
    end)

for _, hash in ipairs(features) do
    FeatureMgr.GetFeature(hash)
        :RegisterCallbackTrigger(eCallbackTrigger.OnTick)
        :SetNoCallbackOnPress(true)
        :SetDefaultValue(100)
        :SetLimitValues(100, 1000)
        :SetSaveable(false)
        :Reset()
end

FeatureMgr.AddFeature(Utils.Joaat("LUA_CrashAll"), "Crash All", eFeatureType.Button, "Removes all players from the lobby",
    function(f)
        for playerId = 0, MAXN_PLAYERS - 1 do
            if playerId ~= Utils.GetLocalPlayerId() then
                FeatureMgr.TriggerFeatureCallback(Utils.Joaat("CrashPlayer"), playerId)
            end
        end
    end)

FeatureMgr.AddFeature(Utils.Joaat("LUA_Button"), "Button", eFeatureType.Button)

FeatureMgr.AddFeature(Utils.Joaat("LUA_Toggle"), "Toggle", eFeatureType.Toggle)
    :SetDefaultValue(true)
    :Reset()

FeatureMgr.AddFeature(Utils.Joaat("LUA_SliderInt"), "SliderInt", eFeatureType.SliderInt)
    :SetLimitValues(0, 10)

FeatureMgr.AddFeature(Utils.Joaat("LUA_SliderFloat"), "SliderFloat", eFeatureType.SliderFloat)
    :SetLimitValues(-1.0, 1.0)

FeatureMgr.AddFeature(Utils.Joaat("LUA_SliderIntToggle"), "SliderIntToggle", eFeatureType.SliderIntToggle)
    :SetLimitValues(0, 10)

FeatureMgr.AddFeature(Utils.Joaat("LUA_SliderFloatToggle"), "SliderFloatToggle", eFeatureType.SliderFloatToggle)
    :SetLimitValues(-1.0, 1.0)

FeatureMgr.AddFeature(Utils.Joaat("LUA_InputInt"), "InputInt", eFeatureType.InputInt)
    :SetLimitValues(0, 10)
    :SetStepSize(1)
    :SetFastStepSize(10)

FeatureMgr.AddFeature(Utils.Joaat("LUA_InputFloat"), "InputFloat", eFeatureType.InputFloat)
    :SetLimitValues(-1.0, 1.0)
    :SetStepSize(0.1)
    :SetFastStepSize(10.0)

FeatureMgr.AddFeature(Utils.Joaat("LUA_InputText"), "InputText", eFeatureType.InputText)
    :SetStringValue("InputText")

FeatureMgr.AddFeature(Utils.Joaat("LUA_InputColor3"), "InputColor3", eFeatureType.InputColor3)
    :SetDefaultValue(0xFFCCAA)
    :Reset()

FeatureMgr.AddFeature(Utils.Joaat("LUA_InputColor4"), "InputColor4", eFeatureType.InputColor4)
    :SetDefaultValue(0xFFFFCCAA)
    :Reset()

FeatureMgr.AddFeature(Utils.Joaat("LUA_List"), "List", eFeatureType.List)
    :SetList({"Eins", "Zwei", "Drei"})

FeatureMgr.AddFeature(Utils.Joaat("LUA_ListWithInfo"), "ListWithInfo", eFeatureType.ListWithInfo)
    :SetList({"Eins", "Zwei", "Drei"})
    :AddInfoContentFeature(Utils.Joaat("LUA_Button"))

FeatureMgr.AddFeature(Utils.Joaat("LUA_Combo"), "Combo", eFeatureType.Combo)
    :SetList({"Eins", "Zwei", "Drei"})

---@param sender? NetGamePlayer
---@param args integer[]
---@return boolean # return true to block
local function scriptedGameEvent(sender, args)
    if sender then
        local eventId = args[1]

        if FeatureMgr.IsFeatureEnabled(Utils.Joaat("LUA_BlockSEs"), sender.PlayerId) then
            Logger.LogInfo(("Blocked EventId: %i from %s"):format(eventId, sender:GetName()))
            return true
        end
    end

    return false
end

local function onPresent()
    local flags = ImGuiWindowFlags.AlwaysAutoResize
        | ImGuiWindowFlags.NoCollapse
        | ImGuiWindowFlags.NoDecoration

    if GUI.IsOpen() then
        ImGui.Begin("Window", true, flags)

        ImGui.BeginGroup()
        ImGui.Text("Some text")
        ImGui.Text(("FPS %0.1f"):format(ImGui.GetFrameRate()))
        ImGui.EndGroup()

        ImGui.SameLine()

        ImGui.BeginGroup()
        ClickGUI.RenderFeature(Utils.Joaat("LUA_Button"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_Toggle"))
        ImGui.EndGroup()

        ImGui.End()
    end
end

---@param playerId integer
local function onPlayerJoin(playerId)
    if playerId ~= INVALID_PLAYER_INDEX then
        local name = PLAYER.GET_PLAYER_NAME(playerId)
        GUI.AddToast("onPlayerJoin", ("Player %s joined"):format(name), 3000)
    end
end

local function childWindowCrashes()
    if ClickGUI.BeginCustomChildWindow("Crashes") then
        ClickGUI.RenderFeature(Utils.Joaat("LUA_CrashAll"))

        ClickGUI.EndCustomChildWindow()
    end
end

local function childWindow()
    if ClickGUI.BeginCustomChildWindow("Window") then
        ClickGUI.RenderFeature(Utils.Joaat("LUA_Button"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_Toggle"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_SliderInt"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_SliderFloat"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_SliderIntToggle"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_SliderFloatToggle"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_InputInt"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_InputFloat"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_InputText"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_InputColor3"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_InputColor4"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_ListWithInfo"))
        ClickGUI.RenderFeature(Utils.Joaat("LUA_Combo"))

        ClickGUI.EndCustomChildWindow()
    end

    if ClickGUI.BeginCustomChildWindow("List") then
        ClickGUI.RenderFeature(Utils.Joaat("LUA_List"))

        ClickGUI.EndCustomChildWindow()
    end

    if ClickGUI.BeginCustomChildWindow("ListWithInfo") then
        ClickGUI.RenderFeature(Utils.Joaat("LUA_ListWithInfo"))

        ClickGUI.EndCustomChildWindow()
    end
end

local function renderTab()
    local NUM_COLUMNS = 2
    local flags = ImGuiTableFlags.SizingStretchSame
    if ImGui.BeginTable("My Lua Tab Table", NUM_COLUMNS, flags) then
        ImGui.TableNextRow()

        for column = 0, NUM_COLUMNS - 1 do
            ImGui.TableSetColumnIndex(column)

            if column == 0 then
                childWindowCrashes()
            end

            if column == 1 then
                childWindow()
            end
        end

        ImGui.EndTable()
    end
end

local function childWindowBlockStuff()
    local playerId = Utils.GetSelectedPlayer()

    if ClickGUI.BeginCustomChildWindow("Block Stuff") then
        ClickGUI.RenderFeature(Utils.Joaat("LUA_BlockSEs"), playerId)

        ClickGUI.EndCustomChildWindow()
    end
end

local function childWindowGriefing()
    local playerId = Utils.GetSelectedPlayer()

    if ClickGUI.BeginCustomChildWindow("Griefing") then
        ClickGUI.RenderFeature(Utils.Joaat("LUA_ExplodeLoop"), playerId)

        ClickGUI.EndCustomChildWindow()
    end
end

local function renderPlayerTab()
    local NUM_COLUMNS = 2
    local flags = ImGuiTableFlags.SizingStretchSame
    if ImGui.BeginTable("My Player Lua Tab Table", NUM_COLUMNS, flags) then
        ImGui.TableNextRow()

        for column = 0, NUM_COLUMNS - 1 do
            ImGui.TableSetColumnIndex(column)

            if column == 0 then
                childWindowBlockStuff()
            end

            if column == 1 then
                childWindowGriefing()
            end
        end

        ImGui.EndTable()
    end
end

EventMgr.RegisterHandler(eLuaEvent.SCRIPTED_GAME_EVENT, scriptedGameEvent)
EventMgr.RegisterHandler(eLuaEvent.ON_PRESENT, onPresent)
EventMgr.RegisterHandler(eLuaEvent.ON_PLAYER_JOIN, onPlayerJoin)

ClickGUI.AddTab("Tab", renderTab)
ClickGUI.AddPlayerTab("PlayerTab", renderPlayerTab)
