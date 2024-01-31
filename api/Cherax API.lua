---@diagnostic disable

---@meta _

---@class CBaseModelInfo
---@field public Model integer
---@field public ModelIndex integer
CBaseModelInfo = {}

---@param address integer
---@return CBaseModelInfo
---@nodiscard
function CBaseModelInfo.FromAddress(address) end

---@return integer
---@nodiscard
function CBaseModelInfo:GetAddress() end

---@return boolean
---@nodiscard
function CBaseModelInfo:IsObject() end

---@return boolean
---@nodiscard
function CBaseModelInfo:IsPed() end

---@return boolean
---@nodiscard
function CBaseModelInfo:IsVehicle() end

---@return boolean
---@nodiscard
function CBaseModelInfo:IsWorldObject() end

---@class CEntity
---@field public HeightMultiplicator number
---@field public IsDynamic boolean
---@field public IsFixed boolean
---@field public IsFixedByNetwork boolean
---@field public IsInWater boolean
---@field public IsNotBuoyant boolean
---@field public IsRenderScorched boolean
---@field public IsVisible boolean
---@field public ModelInfo CModelInfo
---@field public NetObject CNetObject
---@field public Position V3
---@field public ThicknessMultiplicator number
---@field public WidthMultiplicator number
CEntity = {}

function CEntity:DisableInvincible() end

function CEntity:EnableInvincible() end

---@param address integer
---@return CEntity
---@nodiscard
function CEntity.FromAddress(address) end

---@return integer
---@nodiscard
function CEntity:GetAddress() end

--- Check if the extension is not nil before using it.
---@return fwAttachmentEntityExtension?
---@nodiscard
function CEntity:GetAttachmentExtension() end

--- Returns the current velocity vector in meters per second.
---@return V3
---@nodiscard
function CEntity:GetVelocity() end

---@return boolean
---@nodiscard
function CEntity:IsInvincible() end

---@return boolean
---@nodiscard
function CEntity:IsObject() end

---@return boolean
---@nodiscard
function CEntity:IsPed() end

---@return boolean
---@nodiscard
function CEntity:IsVehicle() end

---@class CModelInfo
---@field public Model integer
---@field public ModelIndex integer
CModelInfo = {}

---@return boolean
---@nodiscard
function CModelInfo:IsObject() end

---@return boolean
---@nodiscard
function CModelInfo:IsPed() end

---@return boolean
---@nodiscard
function CModelInfo:IsVehicle() end

---@return boolean
---@nodiscard
function CModelInfo:IsWorldObject() end

---@class CNetObject
---@field public ControlId integer
---@field public Entity CEntity
---@field public IsRemote boolean
---@field public NetId integer
---@field public NextOwnerId integer
---@field public ObjectType integer
---@field public OwnerId integer
---@field public ShouldNotBeDeleted boolean
---@field public WantsToDelete boolean
CNetObject = {}

---@class CPed
---@field public Armor number
---@field public Health number
---@field public HeightMultiplicator number
---@field public IsDynamic boolean
---@field public IsFixed boolean
---@field public IsFixedByNetwork boolean
---@field public IsInWater boolean
---@field public IsNotBuoyant boolean
---@field public IsRenderScorched boolean
---@field public IsVisible boolean
---@field public MaxHealth number
---@field public ModelInfo CModelInfo
---@field public NetObject CNetObject
---@field public Position V3
---@field public ThicknessMultiplicator number
---@field public WidthMultiplicator number
CPed = {}

function CPed:DisableInvincible() end

function CPed:EnableInvincible() end

---@return boolean
---@nodiscard
function CPed:IsPlayer() end

---@param address integer
---@return CPed
---@nodiscard
function CPed.FromAddress(address) end

---@return integer
---@nodiscard
function CPed:GetAddress() end

--- Check if the extension is not nil before using it.
---@return fwAttachmentEntityExtension?
---@nodiscard
function CPed:GetAttachmentExtension() end

--- Returns the current velocity vector in meters per second.
---@return V3
---@nodiscard
function CPed:GetVelocity() end

---@return boolean
---@nodiscard
function CPed:IsInvincible() end

---@return boolean
---@nodiscard
function CPed:IsObject() end

---@return boolean
---@nodiscard
function CPed:IsPed() end

---@class CPhysical

---@return boolean
---@nodiscard
function CPed:IsVehicle() end

---@class CVehicle
---@field public BodyHealth number
---@field public EngineHealth number
---@field public HeightMultiplicator number
---@field public IsDynamic boolean
---@field public IsFixed boolean
---@field public IsFixedByNetwork boolean
---@field public IsInWater boolean
---@field public IsNotBuoyant boolean
---@field public IsRenderScorched boolean
---@field public IsVisible boolean
---@field public ModelInfo CModelInfo
---@field public NetObject CNetObject
---@field public PetrolTankHealth number
---@field public Position V3
---@field public ThicknessMultiplicator number
---@field public WidthMultiplicator number
---@field public SteerAngle number
---@field public SecondSteerAngle number # This is for 4 wheel steering.
---@field public Throttle number
---@field public Brake number
---@field public Nitrous boolean
---@field public DirtLevel number # 0.0=fully clean, 15.0=maximum dirt visible
---@field public BodyDirtColor integer
---@field public HeadlightMultiplier number
---@field public VehicleTopSpeedPercent number
---@field public CheatPowerIncrease number
CVehicle = {}

function CVehicle:DisableInvincible() end

function CVehicle:EnableInvincible() end

---@return CPed
---@nodiscard
function CVehicle:GetDriver() end

---@return CPed
---@nodiscard
function CVehicle:GetLastDriver() end

---@return integer
---@nodiscard
function CVehicle:GetMaxSeats() end

---@param seatIndex integer
---@return CPed
---@nodiscard
function CVehicle:GetPedInSeat(seatIndex) end

---@param address integer
---@return CVehicle
---@nodiscard
function CVehicle.FromAddress(address) end

---@return integer
---@nodiscard
function CVehicle:GetAddress() end

--- Check if the extension is not nil before using it.
---@return fwAttachmentEntityExtension?
---@nodiscard
function CVehicle:GetAttachmentExtension() end

--- Returns the current velocity vector in meters per second.
---@return V3
---@nodiscard
function CVehicle:GetVelocity() end

---@return boolean
---@nodiscard
function CVehicle:IsInvincible() end

---@return boolean
---@nodiscard
function CVehicle:IsObject() end

---@return boolean
---@nodiscard
function CVehicle:IsPed() end

---@return boolean
---@nodiscard
function CVehicle:IsVehicle() end

---@class CVehicleModelInfo
---@field public Model integer
---@field public ModelIndex integer
CVehicleModelInfo = {}

---@param base CModelInfo
---@return CVehicleModelInfo
---@nodiscard
function CVehicleModelInfo.FromBaseModelInfo(base) end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsBicycle() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsBike() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsBlimp() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsBoat() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsCar() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsHeli() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsJetski() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsPlane() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsQuadbike() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsSubmarine() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsSubmarineCar() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsTrailer() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsTrain() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsnAmphibiousCar() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsnAmphibiousQuadbike() end

---@class ClickGUI
ClickGUI = {}

--- Adds a lua tab to the player options.  
---@param title string
---@param renderFunc function
function ClickGUI.AddPlayerTab(title, renderFunc) end

--- Adds a lua tab to the main gui.  
--- Remember to remove the tab.
--- # Example
---@see ClickGUI.AddPlayerTab
---@param title string
---@param renderFunc function
function ClickGUI.AddTab(title, renderFunc) end

--- Begin custom ImgGui Child window.
---@param label string
---@param frames? integer
---|> -1
---@param textLines? integer
---|> -1
---@return boolean
function ClickGUI.BeginCustomChildWindow(label, frames, textLines) end

--- End custom ImgGui Child window.
function ClickGUI.EndCustomChildWindow() end

--- Get the current position in screen coordinates.
---@return number x, number y
---@nodiscard
function ClickGUI.GetPos() end

--- Get the current size in screen coordinates.
---@return number x, number y
---@nodiscard
function ClickGUI.GetSize() end

--- Loads a Theme by its name.
---@param fileName string
---@return boolean
function ClickGUI.LoadTheme(fileName) end

--- Removes a lua tab from the player options.
---@param title string
function ClickGUI.RemovePlayerTab(title) end

--- Removes a lua tab from the main gui.
---@param title string
function ClickGUI.RemoveTab(title) end

--- Renders a custom title bar.
---@param title string
function ClickGUI.RenderCustomTitleBar(title) end

--- Render a feature for the given feature hash and index.
---@overload fun(hash: integer, index: integer): boolean
---@param hash integer
---@return boolean
function ClickGUI.RenderFeature(hash) end

---@class Curl
Curl = {}

--- Adds the defined header.
---@param header string
---@return self
function Curl:AddHeader(header) end

--- Create a new curl object.  
--- ```lua
--- -- make sure that this object doesn't go out of scope, idk cytox can't code it properly
--- local luaCurl = Curl.Easy()
--- luaCurl:Setopt(eCurlOption.CURLOPT_URL, "https://www.google.com/")
--- luaCurl:Perform()
--- ```
---@return Curl
---@nodiscard
function Curl.Easy() end

--- Get whether or not the Perform call has finished.
---@return boolean
---@nodiscard
function Curl:GetFinished() end

--- Get the response. The response string is only valid when no custom Write Function was used.
---@return eCurlCode, string
---@nodiscard
function Curl:GetResponse() end

--- Perform the curl operation after set up. Perform is called asynchronously. Call GetFinished() to check the current state.
function Curl:Perform() end

--- Set specific curl options during initialize.
--- ```lua
--- object:Setopt(eCurlOption.CURLOPT_URL, "https://www.google.com/")
--- ```
---@param option eCurlOption
---@param str string | integer
---@return self
function Curl:Setopt(option, str) end

---@class D3D11Texture
D3D11Texture = {}

---@return D3D11SRV
---@nodiscard
function D3D11Texture:GetCurrent() end

--- The index starts at 0. The max index is (GetFrameCount - 1).
---@param index integer
---@return D3D11SRV
---@nodiscard
function D3D11Texture:GetFrame(index) end

--- Returns the number of frames in this texture.
---@return integer
---@nodiscard
function D3D11Texture:GetFrameCount() end

--- Returns the height this texture.
---@return integer
---@nodiscard
function D3D11Texture:GetHeight() end

--- Returns the width this texture.
---@return integer
---@nodiscard
function D3D11Texture:GetWidth() end

---@class DatBitBuffer
DatBitBuffer = {}

--- Reads 1 bit as a bool. Returns the value and whether the operation was successfull or not.
---@return boolean value, boolean success
---@nodiscard
function DatBitBuffer:ReadBool() end

--- Reads given bits as unsigned 8-bit integer. Returns the value and whether the operation was successfull or not.
---@param bits integer
---@return integer value, boolean success
---@nodiscard
function DatBitBuffer:ReadByte(bits) end

--- Reads given bits as unsigned 32-bit integer. Returns the value and whether the operation was successfull or not.
---@param bits integer
---@return integer value, boolean success
---@nodiscard
function DatBitBuffer:ReadDword(bits) end

--- Reads given bits as unsigned 64-bit integer. Returns the value and whether the operation was successfull or not.
---@param bits integer
---@return integer values, boolean success
---@nodiscard
function DatBitBuffer:ReadQword(bits) end

--- Reads a string for the given length. Returns the string and whether the operation was successfull or not.
---@param strLength integer
---@return string value, boolean success
---@nodiscard
function DatBitBuffer:ReadString(strLength) end

--- Reads given bits as unsigned 16-bit integer. Returns the value and whether the operation was successfull or not.
---@param bits integer
---@return integer value, boolean success
---@nodiscard
function DatBitBuffer:ReadWord(bits) end

---@param bits integer
---@return boolean
---@nodiscard
function DatBitBuffer:Seek(bits) end

---@class EventMgr
EventMgr = {}

--- Register a handler that will be called for a specific event.
---@param event eLuaEvent
---@param func function
---@return integer handlerId
function EventMgr.RegisterHandler(event, func) end

--- Remove a previously registered handler by id.
---@param id integer
function EventMgr.RemoveHandler(id) end

---@class Feature
Feature = {}

--- Adds a hotkey for the feature and returns itself.
---@param keyCode integer
---@return self
function Feature:AddHotKey(keyCode) end

--- Add an feature as info content for eFeatureType ListWithInfo.
---@param hash integer
---@return self
function Feature:AddInfoContentFeature(hash) end

--- Adds a feature to a list that will be rendered after this feature.
---@param feature Feature
function Feature:AddRenderAfter(feature) end

--- Adds a feature to a list that will be rendered before this feature.
---@param feature Feature
function Feature:AddRenderBefore(feature) end

--- Removes all hotkeys for this feature.
---@return self
function Feature:ClearHotkeys() end

function Feature:ClearRenderAfter() end

function Feature:ClearRenderBefore() end

--- If this feature is part of an feature array, this is the index.
---@return integer idx
---@nodiscard
function Feature:GetArrayIndex() end

--- Gets the current boolean value.
--- use `Feature:IsToggled()
---@return boolean value
---@nodiscard
function Feature:GetBoolValue() end

--- Gets the current color in rgba.
---@return integer r, integer g, integer b, integer a
---@nodiscard
function Feature:GetColor() end

--- Get the description of the feature.
---@param translate? boolean
---|> true
---@return string
function Feature:GetDesc(translate) end

--- Get the name of the feature.
---@param translate? boolean
---|> true
---@return string
function Feature:GetName(translate) end

--- Returns the minimum and maximum floating value.
---@return number min, number max
---@nodiscard
function Feature:GetFloatLimitValues() end

--- Returns the maximum floating value.
---@return number max
---@nodiscard
function Feature:GetFloatMaxValue() end

--- Returns the minimum floating value.
---@return number min
---@nodiscard
function Feature:GetFloatMinValue() end

--- Gets the current floating value.
---@return number value
---@nodiscard
function Feature:GetFloatValue() end

---@return integer hash
---@nodiscard
function Feature:GetHash() end

--- Get all hotkeys for this feature.
---@return integer[] hotkeys
---@nodiscard
function Feature:GetHotkeys() end

--- Returns the minimum and maximum integer value.
---@return integer min, integer max
---@nodiscard
function Feature:GetIntLimitValues() end

--- Returns the maximum integer value.
---@return integer max
---@nodiscard
function Feature:GetIntMaxValue() end

--- Returns the minimum integer value.
---@return integer min
---@nodiscard
function Feature:GetIntMinValue() end

--- Gets the current integer value.
---@return integer value
---@nodiscard
function Feature:GetIntValue() end

--- Gets the list for feature types like combo.
---@return string[] list
---@nodiscard
function Feature:GetList() end

--- Gets the current list index of the feature.
---@return integer idx
---@nodiscard
function Feature:GetListIndex() end

--- Same as GetArrayIndex but you might prefer this if you are using a player feature.
---@return integer playerId
---@nodiscard
function Feature:GetPlayerIndex() end

--- Returns a list of features that will be rendered after this feature.
---@return integer[] hashes
---@nodiscard
function Feature:GetRenderAfter() end

--- Returns a list of features that will be rendered before this feature.
---@return integer[] hashes
---@nodiscard
function Feature:GetRenderBefore() end

--- Gets the feature type. E.g eFeatureType.Button
---@return eFeatureType _type
---@nodiscard
function Feature:GetType() end

--- Returns whether the list index has been toggled for types like ComboToggles.
---@param index integer
---@return boolean
---@nodiscord
function Feature:IsListIndexToggled(index) end

--- Returns whether the feature should be saved in settings or not.
---@return boolean
---@nodiscard
function Feature:IsSaveable() end

--- Gets whether a feature can be found by search or not.
---@return boolean
---@nodiscard
function Feature:IsSearchable() end

--- Returns whether the feature can be toggled or not.
---@return boolean
---@nodiscard
function Feature:IsToggleFeature() end

--- Returns whether the feature is currently toggled or not.
---@return boolean
---@nodiscard
function Feature:IsToggled() end

--- Gets the current string value.
---@return string value
---@nodiscard
function Feature:GetStringValue() end

--- Returns whether the feature should be shown in the GUI or not.
---@return boolean visible
---@nodiscard
function Feature:IsVisible() end

--- Renders the feature in the current context. Return true if rendered.
---@return boolean
function Feature:Render() end

--- Load the specific settings for this feature from a file.
---@param file string
---@return boolean success
function Feature:LoadSettings(file) end

--- Triggers the callback as if it would be called from the GUI.
function Feature:OnClick() end

--- Triggers the callback as if it would be called from the settings loader.
function Feature:OnSettingsLoad() end

--- Registers Callback Trigger for the feature and returns itself.
---@param flags eCallbackTrigger
---@return self
function Feature:RegisterCallbackTrigger(flags) end

--- Remove specific hotkeys for this feature.
---@param keyCode integer
---@param all boolean
---@return self
function Feature:RemoveHotkey(keyCode, all) end

--- Returns true when at least one feature was removed
---@param feature Feature
---@return self
function Feature:RemoveRenderAfter(feature) end

--- Returns true when at least one feature was removed
---@param feature Feature
---@return self
function Feature:RemoveRenderBefore(feature) end

--- Restore the current values with the default values.
---@return self
function Feature:Reset() end

--- Sets the current boolean value.
---@param value boolean
---@return self
function Feature:SetBoolValue(value) end

--- Sets the current color value.
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@return self
function Feature:SetColor(r, g, b, a) end

--- Sets the default feature value and returns itself.
---@param value boolean | number
---@return self
function Feature:SetDefaultValue(value) end

--- Set the description of the feature.
---@param desc string
----@return self
function Feature:SetDesc(desc) end

--- Set the name of the feature.
---@param name string
----@return self
function Feature:SetName(name) end

--- Sets the feature fast step size used in a slider.
---@param step number
---@return self
function Feature:SetFastStepSize(step) end

--- Sets the current floating value.
---@param value number
---@return self
function Feature:SetFloatValue(value) end

--- Sets the current integer value.
---@param value integer
---@return self
function Feature:SetIntValue(value) end

--- Sets the feature minimum and maximum values and returns itself.
---@param min number
---@param max number
---@return self
function Feature:SetLimitValues(min, max) end

--- Sets the list for feature types like combo.
---@param list string[]
---@return self
function Feature:SetList(list) end

--- Sets the current list index of the feature.
---@param index integer
---@return self
function Feature:SetListIndex(index) end

--- Sets the feature maximum value and returns itself.
---@param value number
---@return self
function Feature:SetMaxValue(value) end

--- Sets the feature minimum value and returns itself.
---@param value number
---@return self
function Feature:SetMinValue(value) end

--- This disables the callback for OnClick.
---@param disable boolean
---@return self
function Feature:SetNoCallbackOnPress(disable) end

--- Sets whether the feature should be saved in settings or not.
---@param saveable boolean
---@return self
function Feature:SetSaveable(saveable) end

--- Sets whether a feature can be found by search or not.
---@param searchable boolean
---@return self
function Feature:SetSearchable(searchable) end

--- This disables the callback for OnSettingsLoad.
---@param disable boolean
---@return self
function Feature:SetNoCallbackOnSettingsLoad(disable) end

--- Sets the feature step size used in a slider.
---@param value number
---@return self
function Feature:SetStepSize(value) end

--- Sets the current string value.
---@param value string
---@return self
function Feature:SetStringValue(value) end

--- Sets the current feature value and returns itself.
---@param value integer | number | string | boolean
---@return self
function Feature:SetValue(value) end

--- Sets whether the feature should be shown in the GUI or not.
---@param visible boolean
---@return self
function Feature:SetVisible(visible) end

--- Flips the current boolean value of this feature.
function Feature:Toggle() end

--- Toggles the list index for types like ComboToggles.
---@param index integer
---@param toggle boolean
---@return self
function Feature:ToggleListIndex(index, toggle) end

function Feature:TriggerCallback() end

---@class FeatureMgr
FeatureMgr = {}

--- Create and add a new feature to the list.
---@param hash integer
---@param name string
---@param type eFeatureType
---@param desc? string
---|> ""
---@param callback? fun(f: Feature)
---@param nativeThreadExecution? boolean
---|> true
---@return Feature feature
function FeatureMgr.AddFeature(hash, name, type, desc, callback, nativeThreadExecution) end

--- Create and add a new features. Returns list of the created feature hashes.
---@param size integer
---@param hash integer
---@param name string
---@param type eFeatureType
---@param desc? string
---|> ""
---@param callback? fun(f: Feature)
---@param nativeThreadExecution? boolean
---|> true
---@return integer[] hashes
function FeatureMgr.AddFeatureArray(size, hash, name, type, desc, callback, nativeThreadExecution) end

--- Creates an array of 32 features which will automatically reset when the player leaves.
---@param hash integer
---@param name string
---@param type eFeatureType
---@param desc? string
---|> ""
---@param callback? fun(f: Feature)
---@param nativeThreadExecution? boolean
---|> true
---@return integer[] hashes
function FeatureMgr.AddPlayerFeature(hash, name, type, desc, callback, nativeThreadExecution) end

--- Returns all feaure hashes.
---@return integer[]
---@nodiscard
function FeatureMgr.GetAllFeatureHashes() end

--- Returns all feaures.
---@return Feature[]
---@nodiscard
function FeatureMgr.GetAllFeatures() end

--- Returns all player feaure hashes.
---@return integer[]
---@nodiscard
function FeatureMgr.GetAllPlayerFeatureHashes() end

--- Returns the string value of the current feature list index.
---@overload fun(hash: integer, index: integer): string
---@param hash integer
---@return string
---@nodiscard
function FeatureMgr.GetCurrentFeatureListString(hash) end

--- Returns a feature by hash.
---@overload fun(hash: integer, index: integer): Feature
---@param hash integer
---@return Feature
---@nodiscard
function FeatureMgr.GetFeature(hash) end

--- Returns a feature by name.
---@param name string
---@return Feature
---@nodiscard
function FeatureMgr.GetFeatureByName(name) end

--- Returns the color value of the feature.
---@overload fun(hash: integer, index: integer): r: integer, g: integer, b: integer, a: integer
---@param hash integer
---@return integer r, integer g, integer b, integer a
---@nodiscard
function FeatureMgr.GetFeatureColor(hash) end

--- Returns the float value of the feature.
---@overload fun(hash: integer, index: integer): number
---@param hash integer
---@return number value
---@nodiscard
function FeatureMgr.GetFeatureFloat(hash) end

--- Returns the int value of the feature.
---@overload fun(hash: integer, index: integer): integer
---@param hash integer
---@return integer value
---@nodiscard
function FeatureMgr.GetFeatureInt(hash) end

--- Returns all string items of the feature list.
---@overload fun(hash: integer, index: integer): integer
---@param hash integer
---@return string[]
---@nodiscard
function FeatureMgr.GetFeatureList(hash) end

--- Returns the current index of the feature list.
---@overload fun(hash: integer, index: integer): integer
---@param hash integer
---@return integer idx
---@nodiscard
function FeatureMgr.GetFeatureListIndex(hash) end

--- Returns the string value of the feature.
---@overload fun(hash: integer, index: integer): string
---@param hash integer
---@return string value
---@nodiscard
function FeatureMgr.GetFeatureString(hash) end

--- Returns the current focused(ClickGui) / selected(ListGui) feature.
---@return Feature
---@nodiscard
function FeatureMgr.GetFocusedFeature() end

--- Returns the current hovered(ClickGui) / selected(ListGui) feature.
---@return Feature
---@nodiscard
function FeatureMgr.GetHoveredFeature() end

--- Returns the boolean value of the feature.
---@overload fun(hash: integer, index: integer): boolean
---@param hash integer
---@return boolean
---@nodiscard
function FeatureMgr.IsFeatureEnabled(hash) end

--- Loads the given settings. File can be relative or absolute.
---@param file string
---@return boolean success
function FeatureMgr.LoadSettings(file) end

--- Removes the feature for the given hash.
---@overload fun(hash: integer, index: integer): boolean
---@param hash integer
---@return boolean success
function FeatureMgr.RemoveFeature(hash) end

--- Removes the feature array for the given hash and size.
---@param hash integer
---@param size integer
---@return boolean success
function FeatureMgr.RemoveFeatureArray(hash, size) end

--- Removes the player feature for the given hash.
---@param hash integer
---@return boolean success
function FeatureMgr.RemovePlayerFeature(hash) end

--- Resets all player features for every player.
function FeatureMgr.ResetAllPlayerFeatures() end

--- Restore the current values with the default values of the feature.
---@overload fun(hash: integer, index: integer)
---@param hash integer
function FeatureMgr.ResetFeature(hash) end

--- Resets all player features for given player id.
---@param playerIndex integer
function FeatureMgr.ResetPlayerFeatures(playerIndex) end

--- Searches the best matching features for a given result. Uses translations for results. You should cache results whenever input changes. Expensive execution time.
---@param input string
---@param maxResults integer
---@param cutoffPercent number
---@return integer[]
---@nodiscard
function FeatureMgr.SearchFeature(input, maxResults, cutoffPercent) end

--- Sets the color value of the feature.
---@overload fun(hash: integer, index: integer, r: integer, g: integer, b: integer, a: integer)
---@param hash integer
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function FeatureMgr.SetFeatureColor(hash, r, g, b, a) end

--- Sets the float value of the feature.
---@overload fun(hash: integer, value: number, index: integer)
---@param hash integer
---@param value number
function FeatureMgr.SetFeatureFloat(hash, value) end

--- Sets the int value of the feature.
---@overload fun(hash: integer, value: integer, index: integer)
---@param hash integer
---@param value integer
function FeatureMgr.SetFeatureInt(hash, value) end

--- Sets the current index of the feature list.
---@overload fun(hash: integer, value: integer, index: integer)
---@param hash integer
---@param listIndex integer
function FeatureMgr.SetFeatureListIndex(hash, listIndex) end

--- Sets the string value of the feature.
---@overload fun(hash: integer, value: string, index: integer)
---@param hash integer
---@param value string
function FeatureMgr.SetFeatureString(hash, value) end

--- Flips the current boolean value of the feature.
---@overload fun(hash: integer, index: integer)
---@param hash integer
function FeatureMgr.ToggleFeature(hash) end

---@overload fun(hash: integer, index: integer)
---@param hash integer
function FeatureMgr.TriggerFeatureCallback(hash) end

---@class FileMgr
FileMgr = {}

--- Ensures that the given path is a directory.
---@param path string
---@return boolean success
function FileMgr.CreateDir(path) end

--- Deletes the given file using an absolute path.
---@param path string
function FileMgr.DeleteFile(path) end

--- Check whether the file exist using an absolute path.
---@param path string
---@return boolean
---@nodiscard
function FileMgr.DoesFileExist(path) end

--- Returns a list of all found files.
---@param path string
---@param extension string
---@param recursive? boolean
---@return string[] files
---@nodiscard
function FileMgr.FindFiles(path, extension, recursive) end

--- Returns the root directory of the menu.
---@return string
---@nodiscard
function FileMgr.GetMenuRootPath() end

--- Reads the file content using an absolute path.
---@param path string
---@return string
---@nodiscard
function FileMgr.ReadFileContent(path) end

--- Extract a .zip file to a given directory.
---@param zipName string
---@param dir string
---@return boolean success
function FileMgr.Unzip(zipName, dir) end

--- Writes the given content to a file using an absolute path.
---@param path string
---@param content string
---@param append? boolean
---@return boolean success
function FileMgr.WriteFileContent(path, content, append) end

---@class GUI
GUI = {}

--- Creates a toast notification.
---@param title string
---@param text string
---@param duration integer
---@param pos? eToastPos
---@return boolean success
function GUI.AddToast(title, text, duration, pos) end

--- Creates a new texture that can load files such as gif,jpg,png etc. The texture will be cleaned up autoamtically when unloading the lua.
---@param file string
---@return D3D11Texture
---@nodiscard
function GUI.CreateTexture(file) end

--- Returns which GUI Mode is currently rendering. Usefull when Both GUIs are rendering in the same frame.
---@return eGuiMode
---@nodiscard
function GUI.GetCurrentRenderMode() end

--- Returns the current GUI mode.
---@return eGuiMode
---@nodiscard
function GUI.GetMode() end

--- Returns whether the GUI is open or not.
---@return boolean
---@nodiscard
function GUI.IsOpen() end

--- Sets the current GUI Mode
---@param mode eGuiMode
function GUI.SetMode(mode) end

--- Toggle the GUI.
function GUI.Toggle() end

---@class GamerHandle
---@field public UNK1 integer
---@field public Platform integer
---@field public RockstarId integer
GamerHandle = {}

--- Returns true if the GamerHandle is valid.
---@return boolean
---@nodiscard
function GamerHandle:IsValid() end

--- Create a new GamerHandle.
---@return GamerHandle
---@nodiscard
function GamerHandle.New() end

--- Converts the GamerHandle into a GamerHandleBuffer used by most natives.
---@return GamerHandleBuffer
---@nodiscard
function GamerHandle:ToBuffer() end

---@class GamerHandleBuffer
GamerHandleBuffer = {}

--- Returns the buffer address.
---@return integer
---@nodiscard
function GamerHandleBuffer:GetBuffer() end

--- Returns the size of the GamerHandleBuffer.
---@return integer
---@nodiscard
function GamerHandleBuffer:GetSize() end

--- Create a new GamerHandle.
---@return GamerHandleBuffer
---@nodiscard
function GamerHandleBuffer.New() end

--- Converts the GamerHandleBuffer into a GamerHandle.
---@return GamerHandle
---@nodiscard
function GamerHandleBuffer:ToHandle() end

---@class GamerInfo
---@field public HostKey integer
---@field public Name string
---@field public RockstarId integer
GamerInfo = {}

---@class HotKeyMgr
HotKeyMgr = {}

--- Adds a new hotkey for a feature.
---@param hash integer
---@param key integer
function HotKeyMgr.AddHotkey(hash, key) end

--- Returns all hotkeys and their associated feature hash.
---@return table<integer, integer[]>
---@nodiscard
function HotKeyMgr.GetAllHotkeys() end

--- Returns all hotkeys for a specific feature hash.
---@param hash integer
---@return integer[]
---@nodiscard
function HotKeyMgr.GetHotKeys(hash) end

--- Removes specific hotkey from an feature.
---@param hash integer
---@param key integer
function HotKeyMgr.RemoveHotkey(hash, key) end

---@class ListGUI
ListGUI = {}

--- Returns the top most tab.
---@return Tab
---@nodiscard
function ListGUI.GetCurrentTab() end

--- Returns a specific player tab. (ranges from 0-31).
---@param player integer
---@return Tab
---@nodiscard
function ListGUI.GetPlayerTab(player) end

--- Get the current position in screen coordinates.
---@return number x, number y
---@nodiscard
function ListGUI.GetPos() end

--- Returns the root tab.
---@return Tab
---@nodiscard
function ListGUI.GetRootTab() end

--- Get the current size in screen coordinates.
---@return number x, number y
---@nodiscard
function ListGUI.GetSize() end

--- Loads a Theme by its name.
---@param fileName string
---@return boolean
function ListGUI.LoadTheme(fileName) end

--- Set the current position in screen coordinates.
---@param x number
---@param y number
function ListGUI.SetPos(x, y) end

--- Set the current size in screen coordinates.
---@param x number
---@param y number
function ListGUI.SetSize(x, y) end

---@class ListWidget
ListWidget = {}

---@return string
---@nodiscard
function ListWidget:GetDesc() end

---@return string
---@nodiscard
function ListWidget:GetText() end

---@return boolean
---@nodiscard
function ListWidget:IsVisible() end

---@param desc string
function ListWidget:SetDesc(desc) end

---@param text string
function ListWidget:SetText(text) end

---@class Logger
Logger = {}

---@param color eLogColor
---@param prefix string
---@param str string
function Logger.Log(color, prefix, str) end

---@param str string
function Logger.LogError(str) end

---@param str string
function Logger.LogInfo(str) end

---@class Memory
Memory = {}

--- Allocates a block of size bytes of memory, returning a pointer to the beginning of the block. The content of the newly allocated block of memory is not initialized, remaining with indeterminate values. Consider using Memory.MemSet
---@param size? integer
---@return integer
---@nodiscard
function Memory.Alloc(size) end

--- Allocates a 4 byte buffer where an integer can be stored.
---@return integer
---@nodiscard
function Memory.AllocInt() end

--- Deallocates a block of memory, making it available again for further allocations
---@param ptr integer
function Memory.Free(ptr) end

--- Returns the base address of the given module.
---@param moduleName? string
---@return integer
---@nodiscard
function Memory.GetBaseAddress(moduleName) end

--- Sets the first num bytes of the block of memory pointed by ptr to the specified value (interpreted as an unsigned char).
---@param ptr integer
---@param val integer
---@param num integer
---@return integer
function Memory.MemSet(ptr, val, num) end

--- Reads an 8-bit integer at the given address.
---@param address integer
---@return integer
---@nodiscard
function Memory.ReadByte(address) end

--- Reads a float at the given address.
---@param address integer
---@return number
---@nodiscard
function Memory.ReadFloat(address) end

--- Reads a 32-bit integer at the given address.
---@param address integer
---@return integer
---@nodiscard
function Memory.ReadInt(address) end

--- Reads a 64-bit integer at the given address.
---@param address integer
---@return integer
---@nodiscard
function Memory.ReadLong(address) end

--- Reads an 16-bit integer at the given address.
---@param address integer
---@return integer
---@nodiscard
function Memory.ReadShort(address) end

--- Reads a string at the given address.
---@param address integer
---@return string
---@nodiscard
function Memory.ReadString(address) end

--- Reads an unsigned 8-bit integer at the given address.
---@param address integer
---@return integer
---@nodiscard
function Memory.ReadUByte(address) end

--- Reads a unsigned 32-bit integer at the given address.
---@param address integer
---@return integer
---@nodiscard
function Memory.ReadUInt(address) end

--- Reads an unsigned 16-bit integer at the given address.
---@param address integer
---@return integer
---@nodiscard
function Memory.ReadUShort(address) end

--- Reads a Vector3 at the given address.
---@param address integer
---@return V3
---@nodiscard
function Memory.ReadV3(address) end

--- Rips the given address and returns the ripped address.
---@param address integer
---@return integer
---@nodiscard
function Memory.Rip(address) end

--- Scans for a given pattern in a specific module and returns the address if found.
---@param pattern string
---@param moduleName? string
---@return integer
---@nodiscard
function Memory.Scan(pattern, moduleName) end

--- Writes an 8-bit integer to the given address.
---@param address integer
---@param value integer
function Memory.WriteByte(address, value) end

--- Writes a float to the given address.
---@param address integer
---@param value number
function Memory.WriteFloat(address, value) end

--- Writes a 32-bit integer to the given address.
---@param address integer
---@param value integer
function Memory.WriteInt(address, value) end

--- Writes a 64-bit integer to the given address.
---@param address integer
---@param value integer
function Memory.WriteLong(address, value) end

--- Writes an 16-bit integer to the given address.
---@param address integer
---@param value integer
function Memory.WriteShort(address, value) end

--- Writes a string to the given address.
---@param address integer
---@param value string
function Memory.WriteString(address, value) end

--- Writes an unsigned 8-bit integer to the given address.
---@param address integer
---@param value integer
function Memory.WriteUByte(address, value) end

--- Writes a unsigned 32-bit integer to the given address.
---@param address integer
---@param value integer
function Memory.WriteUInt(address, value) end

--- Writes an unsigned 16-bit integer to the given address.
---@param address integer
---@param value integer
function Memory.WriteUShort(address, value) end

--- Writes a Vector3 to the given address.
---@param address integer
---@param value V3
function Memory.WriteV3(address, value) end

---@class ModderDB
ModderDB = {}

---@param rockstarId integer
---@param reason string
---@return boolean
function ModderDB.AddModder(rockstarId, reason) end

---@param playerId integer
---@param reason string
---@return boolean
function ModderDB.AddModderByPlayerId(playerId, reason) end

---@class Natives
Natives = {}

---@param hash integer
---@return boolean
function Natives.InvokeBool(hash, ...) end

---@param hash integer
---@return number
function Natives.InvokeFloat(hash, ...) end

---@param hash integer
---@return integer
function Natives.InvokeInt(hash, ...) end

---@param hash integer
---@return string
function Natives.InvokeString(hash, ...) end

---@param hash integer
---@return number, number, number
function Natives.InvokeV3(hash, ...) end

---@param hash integer
function Natives.InvokeVoid(hash, ...) end

---@class NetAddress
---@field public ProxyAddr SocketAddress
---@field public TargetAddr SocketAddress
---@field public Type NetAddressType
NetAddress = {}

---@enum NetAddressType
NetAddressType = {
    INVALID      = 0,
    DIRECT       = 1,
    RELAY_SERVER = 2,
    PEER_RELAY   = 3,
    NUM_TYPES    = 4
}

---@class NetGamePlayer
---@field public PlayerId integer
---@field public CxnId integer
NetGamePlayer = {}

--- Returns a structure 'GamerInfo' holding information about the player.
---@return GamerInfo
---@nodiscard
function NetGamePlayer:GetGamerInfo() end

---@return string
---@nodiscard
function NetGamePlayer:GetName() end

--- Check whether its the local player or not.
---@return boolean
---@nodiscard
function NetGamePlayer:IsLocalPlayer() end

--- Check if a report flag is set. Also called Rockstar Anti Cheat(RAC).
---@param reason eReportReason
---@return boolean
---@nodiscard
function NetGamePlayer:IsReportBitSet(reason) end

---@class PlayerGameStateFlags
---@field public BulletProof boolean
---@field public CollisionProof boolean
---@field public ControlsDisabledByScript boolean
---@field public DrownProof boolean
---@field public ExplosionProof boolean
---@field public FireProof boolean
---@field public IsAntagonisticToAnotherPlayer boolean
---@field public IsInvincible boolean
---@field public IsMaxHealthAndMaxArmourDefault boolean
---@field public IsSpectating boolean
---@field public MeleeProof boolean
---@field public NeverTarget boolean
---@field public SteamProof boolean
---@field public UseKinematicPhysics boolean
PlayerGameStateFlags = {}

---@class Players
Players = {}

--- Returns the players for a given filter.
---@param filter ePlayerListSort
---@param search string
---@return integer[]
---@nodiscard
function Players.Get(filter, search) end

--- Returns the NetGamePlayer for a given connection id.
---@param cxn integer
---@return NetGamePlayer?
---@nodiscard
function Players.GetByConId(cxn) end

--- Returns the NetGamePlayer for a given endpoint id.
---@param ep integer
---@return NetGamePlayer?
---@nodiscard
function Players.GetByEndpointId(ep) end

--- Returns the NetGamePlayer for a given gamer id.
---@param gamerId integer
---@return NetGamePlayer?
---@nodiscard
function Players.GetByGamerId(gamerId) end

--- Returns the NetGamePlayer for a given ip.
---@param addr netSocketAddress
---@return NetGamePlayer?
---@nodiscard
function Players.GetByIP(addr) end

--- Returns the NetGamePlayer for a given playerId.
---@param playerId integer
---@return NetGamePlayer
---@nodiscard
function Players.GetById(playerId) end

--- Returns the NetGamePlayer for a given peer id.
---@param peerId integer
---@return NetGamePlayer?
---@nodiscard
function Players.GetByPeerId(peerId) end

--- Returns the NetGamePlayer for a given rockstar id.
---@param rid integer
---@return NetGamePlayer?
---@nodiscard
function Players.GetByRockstarId(rid) end

--- Gets the player's CPed
---@param rid integer
---@return CPed?
---@nodiscard
function Players.GetCPed(rid) end

--- Returns the player SocketAddress.
---@param playerId integer
---@return SocketAddress
---@nodiscard
function Players.GetIP(playerId) end

--- Returns a readable player ip string including the type of the connection.
---@param playerId integer
---@return string
---@nodiscard
function Players.GetIPString(playerId) end

--- Returns the player name.
---@param playerId integer
---@return string
---@nodiscard
function Players.GetName(playerId) end

--- Returns the player NetAddress.
---@param playerId integer
---@return NetAddress
---@nodiscard
function Players.GetNetAddress(playerId) end

--- Returns the player tags as string.
---@param playerId integer
---@return string
---@nodiscard
function Players.GetTags(playerId) end

---@class PoolMgr
PoolMgr = {}

--- Return the camera class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CEntity
---@nodiscard
function PoolMgr.GetCCamera(index) end

--- Return the object class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CEntity
---@nodiscard
function PoolMgr.GetCObject(index) end

--- Return the ped class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CPed
---@nodiscard
function PoolMgr.GetCPed(index) end

--- Return the pickup class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CEntity
---@nodiscard
function PoolMgr.GetCPickup(index) end

--- Return the vehicle class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CVehicle
---@nodiscard
function PoolMgr.GetCVehicle(index) end

--- Return the camera handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer
---@nodiscard
function PoolMgr.GetCamera(index) end

--- Return the current amount of cameras.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentCameraCount() end

--- Return the current amount of objects.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentObjectCount() end

--- Return the current amount of peds.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentPedCount() end

--- Return the current amount of pickups.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentPickupCount() end

--- Return the current amount of vehicles.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentVehicleCount() end

--- Return the maximum amount of cameras.
---@return integer
---@nodiscard
function PoolMgr.GetMaxCameraCount() end

--- Return the maximum amount of objects.
---@return integer
---@nodiscard
function PoolMgr.GetMaxObjectCount() end

--- Return the maximum amount of peds.
---@return integer
---@nodiscard
function PoolMgr.GetMaxPedCount() end

--- Return the maximum amount of pickups.
---@return integer
---@nodiscard
function PoolMgr.GetMaxPickupCount() end

--- Return the maximum amount of vehicles.
---@return integer
---@nodiscard
function PoolMgr.GetMaxVehicleCount() end

--- Return the object handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer
---@nodiscard
function PoolMgr.GetObject(index) end

--- Return the ped handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer
---@nodiscard
function PoolMgr.GetPed(index) end

--- Return the pickup handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer
---@nodiscard
function PoolMgr.GetPickup(index) end

--- Return the vehicle handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer
---@nodiscard
function PoolMgr.GetVehicle(index) end

---@class Script
Script = {}

--- Changes the current script context to your desired script, calls your function and then restores the orignal script context.
---@overload fun(scriptHash: integer, fn: fun())
---@param scriptName string
---@param fn fun()
function Script.ExecuteAsScript(scriptName, fn) end

--- Queues a function that will be exeucted in a native thread.
---@generic var_args: any
---@param func fun(...: var_args)
---@param ...var_args
function Script.QueueJob(func, ...) end

--- Register a script that will be called in a loop.
---@generic var_args: any
---@param func fun(...: var_args)
---@param ...var_args
function Script.RegisterLooped(func, ...) end

--- Sleeps for the given time in milliseconds. Should only be executed in a native thread.
---@param ms? integer
function Script.Yield(ms) end

---@class ScriptGlobal
ScriptGlobal = {}

---@param global integer
---@return boolean
---@nodiscard
function ScriptGlobal.GetBool(global) end

---@param global integer
---@return number
---@nodiscard
function ScriptGlobal.GetFloat(global) end

---@param global integer
---@return integer
---@nodiscard
function ScriptGlobal.GetInt(global) end

---@param global integer
---@return integer
---@nodiscard
function ScriptGlobal.GetPtr(global) end

---@param global integer
---@return string
---@nodiscard
function ScriptGlobal.GetString(global) end

--- Returns a pointer to the tunable. Returns 0 if not found.
---@param hash integer
---@return integer
---@nodiscard
function ScriptGlobal.GetTunableByHash(hash) end

---@param global integer
---@param value boolean
function ScriptGlobal.SetBool(global, value) end

---@param global integer
---@param value number
function ScriptGlobal.SetFloat(global, value) end

---@param global integer
---@param value integer
function ScriptGlobal.SetInt(global, value) end

---@param global integer
---@param text string
function ScriptGlobal.SetString(global, text) end

---@class ScriptLocal
ScriptLocal = {}

---@param scriptHash integer
---@param _local integer
---@return boolean
---@nodiscard
function ScriptLocal.GetBool(scriptHash, _local) end

---@param scriptHash integer
---@param _local integer
---@return number
---@nodiscard
function ScriptLocal.GetFloat(scriptHash, _local) end

---@param scriptHash integer
---@param _local integer
---@return integer
---@nodiscard
function ScriptLocal.GetInt(scriptHash, _local) end

---@param scriptHash integer
---@param _local integer
---@return integer
---@nodiscard
function ScriptLocal.GetPtr(scriptHash, _local) end

---@param scriptHash integer
---@param _local integer
---@return string
---@nodiscard
function ScriptLocal.GetString(scriptHash, _local) end

---@param scriptHash integer
---@param _local integer
---@param value boolean
function ScriptLocal.SetBool(scriptHash, _local, value) end

---@param scriptHash integer
---@param _local integer
---@param value number
function ScriptLocal.SetFloat(scriptHash, _local, value) end

---@param scriptHash integer
---@param _local integer
---@param value integer
function ScriptLocal.SetInt(scriptHash, _local, value) end

---@param scriptHash integer
---@param _local integer
---@param text string
function ScriptLocal.SetString(scriptHash, _local, text) end

---@class SocketAddress
---@field public IPv4 integer
---@field public Port integer
SocketAddress = {}

---@param port boolean
---@return string
function SocketAddress:ToString(port) end

---@class SpecificPedTask
---@field public Priority integer
---@field public SequenceId integer
---@field public SpecificActive integer
---@field public TaskId integer
---@field public TreeDepth integer
SpecificPedTask = {}

---@class Stats
Stats = {}

---@param hash integer
---@return boolean success, integer value
---@nodiscard
function Stats.GetBool(hash) end

---@param hash integer
---@return boolean success, number value
---@nodiscard
function Stats.GetFloat(hash) end

---@param hash integer
---@return boolean success, integer value
---@nodiscard
function Stats.GetInt(hash) end

---@param hash integer
---@param value integer
---@return boolean success
function Stats.SetBool(hash, value) end

---@param hash integer
---@param value number
---@return boolean success
function Stats.SetFloat(hash, value) end

---@param hash integer
---@param value integer
---@return boolean success
function Stats.SetInt(hash, value) end

---@class Tab
Tab = {}

---@overload fun(self: self, hash: integer, index: integer)
---@param hash integer
function Tab:AddFeature(hash) end

---@param text string
function Tab:AddSeparator(text) end

---@param text string
---@param desc string
---@return Tab
function Tab:AddSubTab(text, desc) end

---@return string
---@nodiscard
function Tab:GetDesc() end

--- Returns a sub tab by name.
---@param text string
---@return Tab
---@nodiscard
function Tab:GetSubTab(text) end

---@return string
---@nodiscard
function Tab:GetText() end

---@param desc string
function Tab:SetDesc(desc) end

---@param text string
function Tab:SetText(text) end

---@class Texture
Texture = {}

---@param id integer
---@return D3D11Texture
---@nodiscard
function Texture.GetTexture(id) end

---@param id integer
---@return boolean
---@nodiscard
function Texture.IsTextureValid(id) end

--- Creates a new texture that can load files such as gif,jpg,png etc.
---@param file string
---@return integer
---@nodiscard
function Texture.LoadTexture(file) end

--- Creates a new texture that can load files such as gif,jpg,png etc.
---@param file string
---@return integer
---@nodiscard
function Texture.LoadTextureAsync(file) end

---@class Utils
Utils = {}

--- Adds a chat message locally on your pc only. You can specify the sender of the message. The message has a max length of 255 characters.
---@param playerId integer
---@param message string
---@param team boolean
function Utils.AddChatMessageToPool(playerId, message, team) end

--- Adds an item to the Basket Transaction.
---@param items integer[]
---@return boolean
function Utils.BasketAddItem(items) end

--- Initializes a Basket Transaction.
---@param category integer
---@param action integer
---@param flags integer
---@return boolean
function Utils.BasketStart(category, action, flags) end

--- Initializes a new Service Transaction.
---@param type integer
---@param category integer
---@param service integer
---@param action integer
---@param price integer
---@param flags integer
---@return boolean
function Utils.BeginService(type, category, service, action, price, flags) end

--- Starts the checkout of a transaction. Should be used for services and baskets.
---@param transactionId integer
---@return boolean
function Utils.CheckoutStart(transactionId) end

--- Converts the sector pos to world cords.
---@param sectorIn V3
---@param relativePos V3
---@return V3
---@nodiscard
function Utils.ConvertSectorToWorldPosition(sectorIn, relativePos) end

--- Converts the world pos to sector and relative position. This is being used in sync data nodes to sync the actual position of entities. 
---@param pos V3
---@return V3, V3
---@nodiscard
function Utils.ConvertWorldToSectorPosition(pos) end

--- Spawns an object. Should only be executed in a native thread.
---@param hash integer
---@param x number
---@param y number
---@param z number
---@param dynamic boolean
---@param isNetworked? boolean
---|> true
---@return integer
function Utils.CreateObject(hash, x, y, z, dynamic, isNetworked) end

--- Spawns a ped. Should only be executed in a native thread.
---@param hash integer
---@param pedType integer
---@param x number
---@param y number
---@param z number
---@param heading number
---@param isNetworked? boolean
---|> true
---@param autoCleanup? boolean # if set to false entity won't be set as no longer needed
---|> true
---@return integer
function Utils.CreatePed(hash, pedType, x, y, z, heading, isNetworked, autoCleanup) end

--- Creates a random ped. Should only be executed in a native thread.
---@param x number
---@param y number
---@param z number
---@return integer
function Utils.CreateRandomPed(x, y, z) end

--- Spawns an world object using a bypass. Should only be executed in a native thread.
---@param hash integer
---@param x number
---@param y number
---@param z number
---@param dynamic boolean
---@param isNetworked? boolean
---|> true
---@return integer
function Utils.CreateWorldObject(hash, x, y, z, dynamic, isNetworked) end

--- Renders a given CPed on the frontend.
---@param ped CPed
---@param relativeScreen V2
---@param distance number
---@param pitch number
---@param yaw number
---@param lightning number
function Utils.DrawPedPreview(ped, relativeScreen, distance, pitch, yaw, lightning) end

--- Executes the given script. File can be relative or absolute.
---@param file string
---@return boolean
function Utils.ExecuteScript(file) end

--- Returns a net object for given NetId.
---@param netId integer
---@param canDeleteBePending? boolean
---@return CNetObject
---@nodiscard
function Utils.FindNetobjectById(netId, canDeleteBePending) end

--- Forces yourself to script host of the given script.
---@param scriptHash integer
function Utils.ForceScriptHost(scriptHash) end

--- Does the same as GetBonePos3D and then converts them to normalized screen coordinates.
---@param ped CPed
---@param wMask integer
---@return V2
---@nodiscard
function Utils.GetBonePos2D(ped, wMask) end

--- Gets the bone world position based on the specified ped and mask.
---@param ped CPed
---@param wMask integer
---@return V3
---@nodiscard
function Utils.GetBonePos3D(ped, wMask) end

--- Returns the display name of a specific hash.
---@param hash integer
---@return string
---@nodiscard
function Utils.GetDisplayNameFromHash(hash) end

--- Returns a specific label for a given text entry.
---@param str string
---@return string
---@nodiscard
function Utils.GetLabelText(str) end

--- Returns the last joined player id.
---@return integer
---@nodiscard
---@deprecated
function Utils.GetLastJoinedPlayer() end

--- Returns the last joined player id.
---@return integer
---@nodiscard
---@deprecated
function Utils.GetLastLeftPlayer() end

--- Returns the local player CPed class.
---@return CPed
---@nodiscard
function Utils.GetLocalPed() end

--- Returns the local player id.
---@return integer
---@nodiscard
function Utils.GetLocalPlayerId() end

--- Returns Model Info by hash. Returns nil if no CModelInfo found.
---@param hash integer
---@return CModelInfo
---@nodiscard
function Utils.GetModelInfoFromHash(hash) end

--- Returns Model Info by index. Returns nil if no CModelInfo found.
---@param index integer
---@return CModelInfo
---@nodiscard
function Utils.GetModelInfoFromIndex(index) end

--- Returns Model Info Index by hash. Returns -1 if invalid.
---@param hash integer
---@return integer
---@nodiscard
function Utils.GetModelInfoIndexFromHash(hash) end

--- Returns the model name of the model hash.
---@param hash integer
---@return string
---@nodiscard
function Utils.GetModelNameFromHash(hash) end

--- Returns the current selected player id.
---@return integer
---@nodiscard
function Utils.GetSelectedPlayer() end

--- Retrieves the current system time in seconds.
---@return integer
---@nodiscard
function Utils.GetTime() end

--- Retrieves the time since Epoche in seconds.
---@return integer
---@nodiscard
function Utils.GetTimeEpoche() end

--- Retrieves the time since Epoche in milliseconds.
---@return integer
---@nodiscard
function Utils.GetTimeEpocheMs() end

--- Force another player take control of the given entity.
---@param playerId integer
---@param iEntity integer
function Utils.GiveControl(playerId, iEntity) end

--- Give a sepcific player script host of the given script.
---@param playerId integer
---@param scriptHash integer
function Utils.GiveScriptHost(playerId, scriptHash) end

--- Converts an entity handle into a CEntity pointer.
---@param handle integer
---@return CEntity
---@nodiscard
function Utils.HandleToPointer(handle) end

--- Hashes a string using joaat.
---@param str string
---@return integer
---@nodiscard
function Utils.Joaat(str) end

--- ~The mciSendString function sends a command string to an MCI device. The device that the command is sent to is specified in the command string. For more information browse it on the internet.~
--- **Deprecated use `Utils.PlaySound` instead**
---@param str string
---@return boolean
---@deprecated
function Utils.MciSendString(str) end

--- Can be used to play mp3 or wav files.
---@param str string
---@param looped boolean
---@return boolean
function Utils.PlaySound(str, looped) end

--- Converts a CEntity pointer into an entity handle.
---@param ptr CEntity | CPed | CVehicle
---@return integer
---@nodiscard
function Utils.PointerToHandle(ptr) end

--- Registers the given file for the game so it can be used by natives.
---@param path string
---@return boolean
function Utils.RegisterFile(path) end

---@param label string
function Utils.RemoveLabelText(label) end

--- Sends a chat message to every player in the session. Note: You won't see that message yourself unless you manually add it to the chat pool. The message has a max length of 255 characters.
---@param message string
---@param team boolean
function Utils.SendChatMessageToEveryone(message, team) end

--- Sends a chat message to a given player in the session. Note: You won't see that message yourself unless you manually add it to the chat pool. The message has a max length of 255 characters.
---@param playerId integer
---@param message string
---@param team boolean
function Utils.SendChatMessageToPlayer(playerId, message, team) end

--- Overwrites the text for a specifc label which is being used by the game.
---@param label string
---@param text string
function Utils.SetLabelText(label, text) end

--- Sets the current selected Player Id. Returns the previous selected player id.
---@param playerId integer
---@return integer
function Utils.SetSelectedPlayer(playerId) end

--- Should only be executed in a native thread.
---@param hash integer | string
---@param x number
---@param y number
---@param z number
---@param heading number
---@param isNetworked? boolean
---|> true
---@param autoCleanup? boolean # if set to false entity won't be set as no longer needed
---|> true
---@return integer
function Utils.SpawnVehicle(hash, x, y, z, heading, isNetworked, autoCleanup) end

--- Spawns a vehicle in front of the given player. Should only be executed in a native thread.
---@param hash integer | string
---@param player integer
---@param forward? number
---|> 5.0
---@return integer
function Utils.SpawnVehicleForPlayer(hash, player, forward) end

--- Stops all currently played sounds.
function Utils.StopSound() end

--- Triggers a script event for given player(s).
---@overload fun(bitflags: integer, ...: integer): integer
---@param bitflags integer
---@param arguments integer[]
---@param ingoreChecks boolean
---|> false
---@return integer
function Utils.TriggerScriptEvent(bitflags, arguments, ingoreChecks) end

--- Converts a 3D world position to a 2D normalized screen position. To get the actual screen coordinates multiply them with the screen size.
---@overload fun(position: V3): V2
---@param x number
---@param y number
---@param z number
---@return V2
---@nodiscard
function Utils.WorldToScreen(x, y, z) end

---@class V2
---@field public x number
---@field public y number
V2 = {}

--- Create a new V2. This should not be used for natives and only for memory stuff.
---@overload fun(): V2
---@param x number
---@param y number
---@return V2
---@nodiscard
function V2.New(x, y) end

---@class V3
---@field public x number
---@field public y number
---@field public z number
V3 = {}

--- Create a new V3. This should not be used for natives and only for memory stuff.
---@overload fun(): V3
---@param x number
---@param y number
---@param z number
---@return V3
---@nodiscard
function V3.New(x, y, z) end

---@class V4
---@field public x number
---@field public y number
---@field public z number
---@field public w number
V4 = {}

--- Create a new V4. This should not be used for natives and only for memory stuff.
---@overload fun(): V4
---@param x number
---@param y number
---@param z number
---@param w number
---@return V4
---@nodiscard
function V4.New(x, y, z, w) end

---@class Widget
---@field public Description string
---@field public Name string
Widget = {}

---@class fwAttachmentEntityExtension
---@field AttachChild CEntity
---@field AttachFlags integer
---@field AttachOffset V3
---@field AttachParent CEntity
---@field AttachParentOffset V3
---@field AttachSibling CEntity
---@field MyAttachBone integer
---@field NoCollisionEntity CEntity
---@field OtherAttachBone integer
---@field ThisEntity CEntity
fwAttachmentEntityExtension = {}

---@return number x, number y, number z, number w
---@nodiscard
function fwAttachmentEntityExtension:GetRotation() end

---@param x number
---@param y number
---@param z number
---@param w number
function fwAttachmentEntityExtension:SetRotation(x, y, z, w) end

---@return boolean
---@nodiscard
function ShouldUnload() end

function SetShouldUnload() end

---@class netSocketAddress

---@class D3D11SRV
D3D11SRV = {}

---@enum eLuaEvent
eLuaEvent = {
    ON_UNLOAD = 0,
    ON_PRESENT = 1, 
    ON_POST_PRESENT = 2, --- gets called after ON_PRESENT

    --- # Example
    --- ```lua
    --- ---@param playerId integer
    --- ---@param entity CEntity
    --- ---@return boolean
    --- function shouldSpoofSyncData(playerId, entity) end
    ---```
    SHOULD_SPOOF_SYNC_DATA = 3,

    --- # Example
    --- ```lua
    --- ---@param pEntity CPhysical
    --- ---@param node any
    --- ---@param nodeType eSyncDataNodes
    --- ---@param spoofingTarget integer
    --- function spoofSyncData(pEntity, node, nodeType, spoofingTarget) end
    ---```
    SPOOF_SYNC_DATA = 4,

    --- # Example
    --- ```lua
    --- ---@param sender? NetGamePlayer
    --- ---@param eventId integer
    --- ---@param buffer DatBitBuffer
    --- ---@return boolean # return true to block
    --- function netEvent(sender, eventId, buffer) end
    ---```
    NET_EVENT = 5, 

    --- # Example
    --- ```lua
    --- ---@param sender? NetGamePlayer
    --- ---@param args integer[]
    --- ---@return boolean # return true to block
    --- function scriptedGameEvent(sender, args) end
    ---```
    SCRIPTED_GAME_EVENT = 6,

    --- # Example
    --- ```lua
    --- ---@param playerId integer
    --- function onPlayerJoin(playerId) end
    ---```
    ON_PLAYER_JOIN = 7, 

    --- # Example
    --- ```lua
    --- ---@param playerId integer
    --- function onPlayerLeft(playerId) end
    ---```
    ON_PLAYER_LEFT = 8,

    --- # Example
    --- ```lua
    --- ---@param sender? NetGamePlayer
    --- ---@param message string
    --- ---@param isTeam boolean
    --- function onChatMessage(sender, message, isTeam) end
    ---```
    ON_CHAT_MESSAGE = 9,

    ON_PLAYER_PED_CHANGE = 10,
    ON_PLAYER_PED_RESPAWN = 11,
    ON_VEHICLE_CHANGE = 12,
    ON_WEAPON_CHANGE = 13,
    ON_WEAPON_RELOADED = 14,
    ON_SESSION_CHANGE = 15
}

---@enum eCallbackTrigger
eCallbackTrigger = {
    OnPlayerPedChange = 2,
    OnPlayerPedRespawn = 4,
    OnNewVehicle = 8,
    OnWeaponChange = 16,
    OnWeaponReloaded = 32,
    OnSessionChange = 64,
    OnPlayerJoin = 128,
    OnPlayerLeave = 256,
    OnTick = 1024,
    OnPresent = 2048,
    OnPostPresent = 4096
}

---@enum eCurlCode
eCurlCode = {
    CURLE_COULDNT_CONNECT = 0,
    CURLE_COULDNT_RESOLVE_HOST = 1,
    CURLE_COULDNT_RESOLVE_PROXY = 2,
    CURLE_FAILED_INIT = 3,
    CURLE_FTP_WEIRD_SERVER_REPLY = 4,
    CURLE_NOT_BUILT_IN = 5,
    CURLE_OK = 6,
    CURLE_OUT_OF_MEMORY = 7,
    CURLE_REMOTE_ACCESS_DENIED = 8,
    CURLE_UNSUPPORTED_PROTOCOL = 9,
    CURLE_URL_MALFORMAT = 10
}

---@enum eCurlOption
eCurlOption = {
    CURLOPT_HTTPAUTH = 0,
    CURLOPT_NOPROGRESS = 1,
    CURLOPT_POST = 2,
    CURLOPT_POSTFIELDS = 3,
    CURLOPT_URL = 4,
    CURLOPT_USERAGENT = 5,
    CURLOPT_WRITEDATA = 6,
    CURLOPT_WRITEFUNCTION = 7,
    CURLOPT_XFERINFODATA = 8,
    CURLOPT_XFERINFOFUNCTION = 9,
    CURLOPT_XOAUTH2_BEARER = 10
}

---@enum eFeatureType
eFeatureType = {
    Button = 0,
    Toggle = 1,
    SliderInt = 2,
    SliderFloat = 3,
    SliderIntToggle = 4,
    SliderFloatToggle = 5,
    InputInt = 6,
    InputFloat = 7,
    InputText = 8,
    InputColor3 = 9,
    InputColor4 = 10,
    List = 11,
    ListWithInfo = 12,
    Combo = 13,
    ComboToggles = 14,
    Custom = 16
}

---@enum eToastPos
eToastPos = {
    BOTTOM_LEFT = 0,
    BOTTOM_RIGHT = 1,
    TOP_LEFT = 2,
    TOP_RIGHT = 3
}

---@enum eGuiMode
eGuiMode = {
    Both = 0,
    ClickGUI = 1,
    ListGUI = 2
}

---@enum eHookType
eHookType = {
    D3D_PRESENT = 0,
    NET_EVENT = 1,
    SCRIPTED_GAME_EVENT = 2,
    SHOULD_SPOOF_SYNC_DATA = 3,
    SPOOF_SYNC_DATA = 4
}

---@enum eLogColor
eLogColor = {
    BLUE = 0,
    BROWN = 1,
    CYAN = 2,
    DARKGRAY = 3,
    GREEN = 4,
    INTENSIFY = 5,
    LIGHTBLUE = 6,
    LIGHTCYAN = 7,
    LIGHTGRAY = 8,
    LIGHTGREEN = 9,
    LIGHTMAGENTA = 10,
    LIGHTRED = 11,
    MAGENTA = 12,
    RED = 13,
    WHITE = 14,
    YELLOW = 15
}

---@enum eReportReason
eReportReason = {
    CODE_TAMPERING = 0,
    CRC_CODE_CRCS = 1,
    CRC_COMPROMISED = 2,
    CRC_EXE_SIZE = 3,
    CRC_NOT_REPLIED = 4,
    CRC_REQUEST_FLOOD = 5,
    GAME_SERVER_CASH_BANK = 6,
    GAME_SERVER_CASH_WALLET = 7,
    GAME_SERVER_INVENTORY = 8,
    GAME_SERVER_SERVER_INTEGRITY = 9,
    SCRIPT_CHEAT_DETECTION = 10,
    TELEMETRY_BLOCK = 11
}

---@enum ePlayerListSort
ePlayerListSort = {
    PLAYER_ID = 0,
    HOST_QUEUE = 1,
    ALPHABETICAL = 2,
    DISTANCE = 3
}
