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

---@class CDoorCreationDataNode
---@field public DoorModel integer
CDoorCreationDataNode = {}

---@class CEntity
---@field public HeightMultiplier number
---@field public IsDynamic boolean
---@field public IsFixed boolean
---@field public IsFixedByNetwork boolean
---@field public IsObject boolean
---@field public IsPed boolean
---@field public IsPhysical boolean
---@field public IsVehicle boolean
---@field public IsVisible boolean
---@field public ModelInfo? CBaseModelInfo
---@field public Position V3
---@field public ThicknessMultiplier number
---@field public WidthMultiplier number
CEntity = {}

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

---@return eEntityType
---@nodiscard
function CEntity:GetType() end

--- Returns the current velocity vector in meters per second.
---@return V3
---@nodiscard
function CEntity:GetVelocity() end

---@class CExplosionArgs
---@field public ActivationDelay integer
---@field public AttachBoneTag integer
---@field public AttachEntity CEntity
---@field public AttachedToVehicle boolean
---@field public CamShake number
---@field public CamShakeNameHash integer
---@field public CamShakeRollOffScaling number
---@field public DetonatingOtherPlayersExplosive boolean
---@field public Direction V3
---@field public DisableDamagingOwner boolean
---@field public EntExplosionOwner CEntity
---@field public EntIgnoreDamage CEntity
---@field public ExplodingEntity CEntity
---@field public ExplosionPosition V3
---@field public ExplosionTag eExplosionTag
---@field public InAir boolean
---@field public IsLocalOnly boolean
---@field public MakeSound boolean
---@field public NoDamage boolean
---@field public NoFx boolean
---@field public OriginalExplosionTag eExplosionTag
---@field public SizeScale number
---@field public VfxTagHash integer
---@field public WeaponHash integer
CExplosionArgs = {}

--- Create a new CExplosionArgs object.
---@param explosionTag eExplosionTag
---@param explosionPosition V3
---@return CExplosionArgs
function CExplosionArgs.New(explosionTag, explosionPosition) end

---@class CNetGamePlayer
---@field public CxnId integer Connection Id
---@field public PlayerId integer Player Id
---@field public PlayerInfo CPlayerInfo Returns a class 'CPlayerInfo' holding information about the player.
CNetGamePlayer = {}

---@return integer
---@nodiscard
function CNetGamePlayer:GetAddress() end

--- Returns a structure 'GamerInfo' holding information about the player.
---@return GamerInfo
---@nodiscard
function CNetGamePlayer:GetGamerInfo() end

---@return string
---@nodiscard
function CNetGamePlayer:GetName() end

--- Check whether its the local player or not.
---@return boolean
---@nodiscard
function CNetGamePlayer:IsLocalPlayer() end

--- Check if a report flag is set. Also called Rockstar Anti Cheat(RAC).
---@param reason eReportReason
---@return boolean
---@nodiscard
function CNetGamePlayer:IsReportBitSet(reason) end

---@class CNetObject
---@field public IsRemote boolean
---@field public ObjectID integer Used to identify or to find a netobject.
---@field public ObjectType integer
---@field public PendingPlayerId integer The next owner of the CNetObject.
---@field public PlayerId integer
CNetObject = {}

--- Check if 'object.Entity' is not nil before using it. Invalid for NetObjDoor.
---@return CPhysical?
---@nodiscard
function CNetObject:GetEntity() end

---@class CObject : CPhysical
---@field public HeightMultiplier number
---@field public IsDynamic boolean
---@field public IsFixed boolean
---@field public IsFixedByNetwork boolean
---@field public IsInWater boolean
---@field public IsNotBuoyant boolean
---@field public IsRenderScorched boolean
---@field public IsVisible boolean
---@field public ModelInfo? CBaseModelInfo Check if 'object.ModelInfo' is not nil before using it.
---@field public NetObject? CNetObject Check if 'object.NetObject' is not nil before using it.
---@field public Position V3
---@field public ThicknessMultiplier number
---@field public WidthMultiplier number
CObject = {}

---@param address integer
---@return CObject
---@nodiscard
function CObject.FromAddress(address) end

function CObject:DisableInvincible() end
function CObject:EnableInvincible() end

---@return integer
---@nodiscard
function CObject:GetAddress() end

--- Check if the extension is not nil before using it.
---@return fwAttachmentEntityExtension?
---@nodiscard
function CObject:GetAttachmentExtension() end

---@return eEntityType
---@nodiscard
function CObject:GetType() end

--- Returns the current velocity vector in meters per second.
---@return V3
---@nodiscard
function CObject:GetVelocity() end

---@return boolean
---@nodiscard
function CObject:IsInvincible() end

---@return boolean
---@nodiscard
function CObject:IsObject() end

---@return boolean
---@nodiscard
function CObject:IsPed() end

---@return boolean
---@nodiscard
function CObject:IsPhysical() end

---@return boolean
---@nodiscard
function CObject:IsVehicle() end

---@class CPed : CPhysical
---@field public Armor number
---@field public CurVehicle CVehicle
---@field public Health number
---@field public HeightMultiplier number
---@field public IsDynamic boolean
---@field public IsFixed boolean
---@field public IsFixedByNetwork boolean
---@field public IsInWater boolean
---@field public IsNotBuoyant boolean
---@field public IsRenderScorched boolean
---@field public IsVisible boolean
---@field public LastVehicle CVehicle
---@field public MaxHealth number
---@field public ModelInfo? CBaseModelInfo Check if 'object.ModelInfo' is not nil before using it.
---@field public NetObject? CNetObject Check if 'object.NetObject' is not nil before using it.
---@field public PlayerInfo CPlayerInfo
---@field public Position V3
---@field public ThicknessMultiplier number
---@field public WidthMultiplier number
CPed = {}

---@param address integer
---@return CPed
---@nodiscard
function CPed.FromAddress(address) end

function CPed:DisableInvincible() end
function CPed:EnableInvincible() end

---@return integer
---@nodiscard
function CPed:GetAddress() end

--- Check if the extension is not nil before using it.
---@return fwAttachmentEntityExtension?
---@nodiscard
function CPed:GetAttachmentExtension() end

---@return eEntityType
---@nodiscard
function CPed:GetType() end

--- Returns the current velocity vector in meters per second.
---@return V3
---@nodiscard
function CPed:GetVelocity() end

---@return boolean
---@nodiscard
function CPed:IsInVehicle() end

---@return boolean
---@nodiscard
function CPed:IsInvincible() end

---@return boolean
---@nodiscard
function CPed:IsObject() end

---@return boolean
---@nodiscard
function CPed:IsPed() end

---@return boolean
---@nodiscard
function CPed:IsPhysical() end

---@return boolean
---@nodiscard
function CPed:IsPlayer() end

---@return boolean
---@nodiscard
function CPed:IsVehicle() end

---@class CPhysical : CEntity
---@field public HeightMultiplier number
---@field public IsDynamic boolean
---@field public IsFixed boolean
---@field public IsFixedByNetwork boolean
---@field public IsInWater boolean
---@field public IsNotBuoyant boolean
---@field public IsRenderScorched boolean
---@field public IsVisible boolean
---@field public ModelInfo? CBaseModelInfo Check if 'object.ModelInfo' is not nil before using it.
---@field public NetObject? CNetObject Check if 'object.NetObject' is not nil before using it.
---@field public Position V3
---@field public ThicknessMultiplier number
---@field public WidthMultiplier number
CPhysical = {}

---@param address integer
---@return CPhysical
---@nodiscard
function CPhysical.FromAddress(address) end

function CPhysical:DisableInvincible() end
function CPhysical:EnableInvincible() end

---@return integer
---@nodiscard
function CPhysical:GetAddress() end

--- Check if the extension is not nil before using it.
---@return fwAttachmentEntityExtension?
---@nodiscard
function CPhysical:GetAttachmentExtension() end

---@return eEntityType
---@nodiscard
function CPhysical:GetType() end

--- Returns the current velocity vector in meters per second.
---@return V3
---@nodiscard
function CPhysical:GetVelocity() end

---@return boolean
---@nodiscard
function CPhysical:IsInvincible() end

---@return boolean
---@nodiscard
function CPhysical:IsObject() end

---@return boolean
---@nodiscard
function CPhysical:IsPed() end

---@return boolean
---@nodiscard
function CPhysical:IsPhysical() end

---@return boolean
---@nodiscard
function CPhysical:IsVehicle() end

---@class CPlayerInfo
---@field public CachedSprintMultThisFrame number
---@field public ExplosiveDamageModifier number
---@field public ForceAirDragMult number Affects the air drag of the player's current car/bike
---@field public FriendStatus integer
---@field public HavocCaused integer A counter going up when the player does bad stuff.
---@field public JackSpeed integer 2 bytes
---@field public LastChangeWeaponFrame integer
---@field public LastTargetVehicle CVehicle Last vehicle player tried to enter.
---@field public MaxArmour integer 2 bytes
---@field public MaxExplosiveDamage number
---@field public MaxHealth integer 2 bytes
---@field public MaxSprintEnergy number
---@field public MeleeUnarmedDamageModifier number
---@field public MeleeWeaponDamageModifier number
---@field public MeleeWeaponDefenseModifier number
---@field public MeleeWeaponForceModifier number
---@field public NetData GamerInfo structure to GamerInfo holding information about the player
---@field public NumEnemiesInCombat integer A count of the number of enemy peds in combat targetting this player.
---@field public NumEnemiesShootingInCombat integer A count of the number of enemy peds shooting at this player.
---@field public OnlyEnterThisVehicle CVehicle Restrict the player to only being able to enter this vehicle (script-controlled)
---@field public PlayerGroup integer
---@field public PlayerPed CPed Pointer to the player ped (should always be set)
---@field public PlayerState integer PLAYERSTATE_INVALID = -1, PLAYERSTATE_PLAYING, ...
---@field public PreferFrontPassengerSeatVehicle CVehicle Script can prefer the player to enter the front passenger seat for this vehicle
---@field public PreferRearSeatsVehicle CVehicle Script can prefer the player to enter the rear seats for this vehicle
---@field public RunSprintSpeedMultiplier number
---@field public SpotterOfStolenVehicle CPed
---@field public SprintControlCounter number
---@field public SprintEnergy number
---@field public StealthRate number
---@field public SwimSpeedMultiplier number
---@field public Team integer The player's team (in network game)
---@field public TimeBikeSprintPressed integer
---@field public VehicleDamageModifier number
---@field public VehicleDefenseModifier number
---@field public WeaponDamageModifier number
---@field public WeaponDefenseModifier number
---@field public WeaponMinigunDefenseModifier number
---@field public WeaponTakedownDefenseModifier number
CPlayerInfo = {}

---@class CVehicle : CPhysical
---@field public BodyDirtColor integer
---@field public BodyHealth number
---@field public Brake number
---@field public CheatPowerIncrease number
---@field public DirtLevel number 0.0=fully clean, 15.0=maximum dirt visible
---@field public HandBrake boolean
---@field public HeadlightMultiplier number
---@field public HeightMultiplier number
---@field public IsDynamic boolean
---@field public IsFixed boolean
---@field public IsFixedByNetwork boolean
---@field public IsInWater boolean
---@field public IsNotBuoyant boolean
---@field public IsRenderScorched boolean
---@field public IsVisible boolean
---@field public ModelInfo? CBaseModelInfo Check if 'object.ModelInfo' is not nil before using it.
---@field public NetObject? CNetObject Check if 'object.NetObject' is not nil before using it.
---@field public Nitrous boolean
---@field public PetrolTankHealth number
---@field public Position V3
---@field public SecondSteerAngle number This is for 4 wheel steering.
---@field public SteerAngle number
---@field public ThicknessMultiplier number
---@field public Throttle number
---@field public VehicleTopSpeedPercent number
---@field public WidthMultiplier number
CVehicle = {}

---@param address integer
---@return CVehicle
---@nodiscard
function CVehicle.FromAddress(address) end

function CVehicle:DisableInvincible() end
function CVehicle:EnableInvincible() end

---@return integer
---@nodiscard
function CVehicle:GetAddress() end

--- Check if the extension is not nil before using it.
---@return fwAttachmentEntityExtension?
---@nodiscard
function CVehicle:GetAttachmentExtension() end

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

---@return eEntityType
---@nodiscard
function CVehicle:GetType() end

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
function CVehicle:IsPhysical() end

---@return boolean
---@nodiscard
function CVehicle:IsVehicle() end

---@class CVehicleModelInfo
---@field public Model integer
---@field public ModelIndex integer
CVehicleModelInfo = {}

---@param address integer
---@return CVehicleModelInfo
---@nodiscard
function CVehicleModelInfo.FromAddress(address) end

---@param base CBaseModelInfo
---@return CVehicleModelInfo
---@nodiscard
function CVehicleModelInfo.FromBaseModelInfo(base) end

---@return integer
---@nodiscard
function CVehicleModelInfo:GetAddress() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsAmphibiousCar() end

---@return boolean
---@nodiscard
function CVehicleModelInfo:IsAmphibiousQuadbike() end

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

---@class Cherax
Cherax = {}

---@return integer
function Cherax.GetBuild() end

---@return string
function Cherax.GetEdition() end

---@return integer
function Cherax.GetLegacyUID() end

---@return integer
function Cherax.GetUID() end

---@return string
function Cherax.GetVersion() end

---@class ClickGUI
ClickGUI = {}

--- Adds a lua tab to the player options.
---@param title string
---@param renderFunc function
function ClickGUI.AddPlayerTab(title, renderFunc) end

--- Adds a lua tab to the main gui.
---@param title string
---@param renderFunc function
function ClickGUI.AddTab(title, renderFunc) end

--- Begin custom ImgGui Child window. The text alignment range is [0.0 - 1.0]. A value of -1.0 indicates the default value.
---@param label string
---@param frames? integer
---@param textLines? integer
---@param textAlignX? number
---@param textAlignY? number
---@return boolean
function ClickGUI.BeginCustomChildWindow(label, frames, textLines, textAlignX, textAlignY) end

--- End custom ImgGui Child window.
function ClickGUI.EndCustomChildWindow() end

--- Get the current open menu tab.
---@return ClickTab
function ClickGUI.GetActiveMenuTab() end

--- Get the current position in screen coordinates.
---@return number x, number y
function ClickGUI.GetPos() end

--- Get the current size in screen coordinates.
---@return number x, number y
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
---@param hash integer
---@param index? integer
---@return boolean
function ClickGUI.RenderFeature(hash, index) end

--- Set the current open menu tab.
---@param tab ClickTab
function ClickGUI.SetActiveMenuTab(tab) end

---@class ClickTab
---@field LuaEditor any
---@field LuaTab any
---@field Miscellaneous any
---@field NumTabs any
---@field Player any
---@field PlayerList any
---@field Protections any
---@field Recovery any
---@field SCAPI any
---@field Session any
---@field Settings any
---@field Spawner any
---@field Vehicle any
---@field Weapon any
ClickTab = {}

---@class Curl
Curl = {}

--- Adds the defined header.
---@param header string
---@return self
function Curl:AddHeader(header) end

--- Disables the logging of errors.
---@return self
function Curl:DisableErrorLog() end

--- Create a new curl object. Never lose this object until you are completely done with it. Never do 'Curl.Easy():Setopt' because this will cause the object to be lost by lua gc.
---@return Curl
function Curl.Easy() end

--- Get whether or not the Perform call has finished.
---@return boolean
function Curl:GetFinished() end

--- Get the response. The response string is only valid when no custom Write Function was used.
---@return eCurlCode, string
function Curl:GetResponse() end

--- Perform the curl operation after set up. Perform is called asynchronously. Call GetFinished() to check the current state.
function Curl:Perform() end

--- Set specific curl options during initialize.
---@param option eCurlOption
---@param str string|integer
---@return self
function Curl:Setopt(option, str) end

---@class D3D12Texture
D3D12Texture = {}

---@return any ImTextureID
function D3D12Texture:GetCurrent() end

--- The index starts at 0. The max index is (GetFrameCount - 1).
---@param index integer
---@return any ImTextureID
function D3D12Texture:GetFrame(index) end

--- Returns the number of frames in this texture.
---@return integer
function D3D12Texture:GetFrameCount() end

--- Returns the height this texture.
---@return integer
function D3D12Texture:GetHeight() end

--- Returns the width this texture.
---@return integer
function D3D12Texture:GetWidth() end

---@class DatBitBuffer
DatBitBuffer = {}

--- Reads a bool from the buffer. Format: [value, success]
---@return boolean, boolean
function DatBitBuffer:ReadBool() end

--- Reads a signed integer from the buffer. Format: [value, success]
---@param numBits integer
---@return integer, boolean
function DatBitBuffer:ReadInt(numBits) end

--- Reads a zero-terminated string from the buffer. Format: [value, success]
---@param maxChars integer
---@return string, boolean
function DatBitBuffer:ReadString(maxChars) end

--- Reads an unsigned integer from the buffer. Format: [value, success]
---@param numBits integer
---@return integer, boolean
function DatBitBuffer:ReadUns(numBits) end

--- Sets the bit position of the cursor. This is the location of the next read/write.
---@param pos integer
---@return boolean
function DatBitBuffer:Seek(pos) end

---@class EventMgr
EventMgr = {}

--- Register a handler that will be called for a specific event.
---@param event eLuaEvent
---@param func function
---@return integer
function EventMgr.RegisterHandler(event, func) end

--- Remove a previously registered handler by id.
---@param id integer
function EventMgr.RemoveHandler(id) end

---@class Feature
---@field public Desc string Description of the feature
---@field public Name string Name of the feature
Feature = {}

--- Adds a hotkey for the feature and returns itself.
---@param keyCode integer
---@return Feature
function Feature:AddHotKey(keyCode) end

--- Add an feature as info content for eFeatureType ListWithInfo.
---@param hash integer
---@return Feature
function Feature:AddInfoContentFeature(hash) end

--- Adds a feature to a list that will be rendered after this feature.
---@param feature Feature
function Feature:AddRenderAfter(feature) end

--- Adds a feature to a list that will be rendered before this feature.
---@param feature Feature
function Feature:AddRenderBefore(feature) end

--- Removes all hotkeys for this feature.
---@return Feature
function Feature:ClearHotkeys() end

---@param feature Feature
function Feature:ClearRenderAfter(feature) end

---@param feature Feature
function Feature:ClearRenderBefore(feature) end

--- If this feature is part of an feature array, this is the index.
---@return integer
function Feature:GetArrayIndex() end

--- Gets the current boolean value.
---@return boolean
function Feature:GetBoolValue() end

--- Gets the current color in rgba.
---@return integer r, integer g, integer b, integer a
function Feature:GetColor() end

--- Gets the current color in rgba as floats from 0.0 to 1.0 .
---@return number r, number g, number b, number a
function Feature:GetColorFloats() end

--- Gets the current color in packed rgba.
---@return integer
function Feature:GetColorU32() end

--- Get the description of the feature.
---@param translate? boolean
---@return string
function Feature:GetDesc(translate) end

--- Gets the feature fast step size used in a slider.
--- This method returns a float/number based on context, here assuming generic.
---@return number|integer
function Feature:GetFastStepSizeFloat() end

--- Gets the feature fast step size used in a slider.
---@return integer
function Feature:GetFastStepSizeInt() end

--- Returns the minimum and maximum floating value.
---@return number, number
function Feature:GetFloatLimitValues() end

--- Returns the maximum floating value.
---@return number
function Feature:GetFloatMaxValue() end

--- Returns the minimum floating value.
---@return number
function Feature:GetFloatMinValue() end

--- Gets the current floating value.
---@return number
function Feature:GetFloatValue() end

--- Returns the format used for slider and input values.
---@return string
function Feature:GetFormat() end

---@return integer
function Feature:GetHash() end

--- Get all hotkeys for this feature.
---@return table<integer, int>
function Feature:GetHotkeys() end

--- Returns the feature id in creation order.
---@return integer
function Feature:GetId() end

--- Returns the minimum and maximum integer value.
---@return integer, integer
function Feature:GetIntLimitValues() end

--- Returns the maximum integer value.
---@return integer
function Feature:GetIntMaxValue() end

--- Returns the minimum integer value.
---@return integer
function Feature:GetIntMinValue() end

--- Gets the current integer value.
---@return integer
function Feature:GetIntValue() end

--- Gets the list for feature types like combo.
---@return table<integer, string>
function Feature:GetList() end

--- Gets the current list index of the feature.
---@return integer
function Feature:GetListIndex() end

--- Get the name of the feature.
---@param translate? boolean
---@return string
function Feature:GetName(translate) end

--- Same as GetArrayIndex but you might prefer this if you are using a player feature.
---@return integer
function Feature:GetPlayerIndex() end

--- Returns a list of features that will be rendered after this feature.
---@return table<integer, int>
function Feature:GetRenderAfter() end

--- Returns a list of features that will be rendered before this feature.
---@return table<integer, int>
function Feature:GetRenderBefore() end

--- Gets the feature step size used in a slider.
---@return number
function Feature:GetStepSizeFloat() end

--- Gets the feature step size used in a slider.
---@return integer
function Feature:GetStepSizeInt() end

--- Gets the current string value.
---@return string
function Feature:GetStringValue() end

--- Gets the feature type. E.g eFeatureType.Button
---@return eFeatureType
function Feature:GetType() end

--- Returns whether the list index has been toggled for types like ComboToggles.
---@param index integer
---@return boolean
function Feature:IsListIndexToggled(index) end

--- Returns whether the feature is a player feature or not.
---@return boolean
function Feature:IsPlayerFeature() end

--- Returns whether the feature should be safed in settings or not..
---@return boolean
function Feature:IsSaveable() end

--- Gets whether a feature can be found by search or not.
---@return boolean
function Feature:IsSearchable() end

--- Returns whether the feature can be toggled or not.
---@return boolean
function Feature:IsToggleFeature() end

--- Returns whether the feature is currently toggled or not.
---@return boolean
function Feature:IsToggled() end

--- Returns whether the feature should be shown in the GUI or not.
---@return boolean
function Feature:IsVisible() end

--- Load the specific settings for this feature from a file.
---@param file string
---@return boolean
function Feature:LoadSettings(file) end

--- Triggers the callback as if it would be called from the GUI.
function Feature:OnClick() end

--- Triggers the callback as if it would be called from the settings loader.
function Feature:OnSettingsLoad() end

--- Registers Callback Trigger for the feature and returns itself.
---@param flags eCallbackTrigger
---@return Feature
function Feature:RegisterCallbackTrigger(flags) end

--- Remove specific hotkeys for this feature.
---@param keyCode integer
---@param all boolean
---@return Feature
function Feature:RemoveHotkey(keyCode, all) end

--- Returns true when at least one feature was removed
---@param feature Feature
---@return boolean
function Feature:RemoveRenderAfter(feature) end

--- Returns true when at least one feature was removed
---@param feature Feature
---@return boolean
function Feature:RemoveRenderBefore(feature) end

--- Renders the feature in the current context. Return true if rendered.
---@return boolean
function Feature:Render() end

--- Restore the current values with the default values.
---@return Feature
function Feature:Reset() end

--- Sets the current boolean value.
---@param value boolean
---@return Feature
function Feature:SetBoolValue(value) end

--- Sets the current color value.
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@return Feature
function Feature:SetColor(r, g, b, a) end

--- Sets the current color value.
---@param r number
---@param g number
---@param b number
---@param a number
---@return Feature
function Feature:SetColorFloats(r, g, b, a) end

--- Sets the current color in packed rgba.
---@param color integer
---@return Feature
function Feature:SetColorU32(color) end

--- Sets the default feature value and returns itself.
---@param value any
---@return Feature
function Feature:SetDefaultValue(value) end

--- Set the description of the feature.
---@param desc string
---@return Feature
function Feature:SetDesc(desc) end

--- Sets the feature fast step size used in a slider.
---@param size number|integer
---@return Feature
function Feature:SetFastStepSize(size) end

--- Sets the current floating value.
---@param value number
---@return Feature
function Feature:SetFloatValue(value) end

--- Sets the format used for slider and input values.
---@param fmt string
---@return self
function Feature:SetFormat(fmt) end

--- Sets the current integer value.
---@param value integer
---@return Feature
function Feature:SetIntValue(value) end

--- Sets the feature minimum and maximum values and returns itself.
---@param min number|integer
---@param max number|integer
---@return Feature
function Feature:SetLimitValues(min, max) end

--- Sets the list for feature types like combo.
---@param list table<integer, string>
---@return Feature
function Feature:SetList(list) end

--- Sets the current list index of the feature.
---@param index integer
---@return Feature
function Feature:SetListIndex(index) end

--- Sets the feature maximum value and returns itself.
---@param value number|integer
---@return Feature
function Feature:SetMaxValue(value) end

--- Sets the feature minimum value and returns itself.
---@param value number|integer
---@return Feature
function Feature:SetMinValue(value) end

--- Set the name of the feature.
---@param name string
---@return Feature
function Feature:SetName(name) end

--- This disables the callback for OnClick.
---@param disable boolean
---@return Feature
function Feature:SetNoCallbackOnClick(disable) end

--- This disables the callback for OnSettingsLoad.
---@param disable boolean
---@return Feature
function Feature:SetNoCallbackOnSettingsLoad(disable) end

--- Sets whether the feature should be safed in settings or not.
---@param saveable boolean
---@return Feature
function Feature:SetSaveable(saveable) end

--- Sets whether a feature can be found by search or not.
---@param searchable boolean
---@return Feature
function Feature:SetSearchable(searchable) end

--- Sets the feature step size used in a slider.
---@param size number|integer
---@return Feature
function Feature:SetStepSize(size) end

--- Sets the current string value.
---@param value string
---@return Feature
function Feature:SetStringValue(value) end

--- Sets the current feature value and returns itself.
---@param value any
---@return Feature
function Feature:SetValue(value) end

--- Sets whether the feature should be shown in the GUI or not.
---@param visible boolean
---@return Feature
function Feature:SetVisible(visible) end

--- Flips the current boolean value of this feature.
---@param on? boolean
---@return Feature
function Feature:Toggle(on) end

--- Toggles the list index for types like ComboToggles.
---@param index integer
---@param toggle boolean
---@return Feature
function Feature:ToggleListIndex(index, toggle) end

function Feature:TriggerCallback() end

---@class FeatureMgr
FeatureMgr = {}

--- Create and add a new feature to the list.
---@param hash integer
---@param name string
---@param type eFeatureType
---@param desc? string
---@param callback? function
---@param nativeThreadExecution? boolean
---@param forceQueue? boolean
---@return Feature
function FeatureMgr.AddFeature(hash, name, type, desc, callback, nativeThreadExecution, forceQueue) end

--- Create and add a new features. Returns list of the created feature hashes.
---@param size integer
---@param hash integer
---@param name string
---@param type eFeatureType
---@param desc? string
---@param callback? function
---@param nativeThreadExecution? boolean
---@param forceQueue? boolean
---@return table<integer, int>
function FeatureMgr.AddFeatureArray(size, hash, name, type, desc, callback, nativeThreadExecution, forceQueue) end

--- Creates an array of 32 features which will automatically reset when the player leaves.
---@param hash integer
---@param name string
---@param type eFeatureType
---@param desc? string
---@param callback? function
---@param nativeThreadExecution? boolean
---@param forceQueue? boolean
---@return table<integer, int>
function FeatureMgr.AddPlayerFeature(hash, name, type, desc, callback, nativeThreadExecution, forceQueue) end

--- Returns all feaure hashes.
---@return table<integer, int>
function FeatureMgr.GetAllFeatureHashes() end

--- Returns all feaures.
---@return table<integer, Feature>
function FeatureMgr.GetAllFeatures() end

--- Returns all player feaure hashes.
---@param playerId? integer
---@return table<integer, int>
function FeatureMgr.GetAllPlayerFeatureHashes(playerId) end

--- Returns the string value of the current feature list index.
---@param hash integer
---@param index? integer
---@return string
function FeatureMgr.GetCurrentFeatureListString(hash, index) end

--- Returns a feature by hash.
---@param hash integer
---@param index? integer
---@return Feature
function FeatureMgr.GetFeature(hash, index) end

--- Returns a feature by name.
---@param name string
---@param index? integer
---@return Feature
function FeatureMgr.GetFeatureByName(name, index) end

--- Returns the color value of the feature.
---@param hash integer
---@param index? integer
---@return integer r, integer g, integer b, integer a
function FeatureMgr.GetFeatureColor(hash, index) end

--- Returns the float value of the feature.
---@param hash integer
---@param index? integer
---@return number
function FeatureMgr.GetFeatureFloat(hash, index) end

--- Returns the int value of the feature.
---@param hash integer
---@param index? integer
---@return integer
function FeatureMgr.GetFeatureInt(hash, index) end

--- Returns all string items of the feature list.
---@param hash integer
---@param index? integer
---@return table<integer, string>
function FeatureMgr.GetFeatureList(hash, index) end

--- Returns the current index of the feature list.
---@param hash integer
---@param index? integer
---@return integer
function FeatureMgr.GetFeatureListIndex(hash, index) end

--- Returns the string value of the feature.
---@param hash integer
---@param index? integer
---@return string
function FeatureMgr.GetFeatureString(hash, index) end

--- Returns the current focused(ClickGui) / selected(ListGui) feature.
---@return Feature
function FeatureMgr.GetFocusedFeature() end

--- Returns the current hovered(ClickGui) / selected(ListGui) feature.
---@return Feature
function FeatureMgr.GetHoveredFeature() end

--- Returns the boolean value of the feature.
---@param hash integer
---@param index? integer
---@return boolean
function FeatureMgr.IsFeatureEnabled(hash, index) end

--- Returns if the feature is toggled.
---@param hash integer
---@param index? integer
---@return boolean
function FeatureMgr.IsFeatureToggled(hash, index) end

--- Loads the given settings. File can be relative or absolute.
---@param file string
---@return boolean
function FeatureMgr.LoadSettings(file) end

--- Removes the feature for the given hash.
---@param hash integer
---@return boolean
function FeatureMgr.RemoveFeature(hash) end

--- Removes the feature array for the given hash and size.
---@param hash integer
---@param size integer
---@return boolean
function FeatureMgr.RemoveFeatureArray(hash, size) end

--- Removes the player feature for the given hash.
---@param hash integer
---@return boolean
function FeatureMgr.RemovePlayerFeature(hash) end

--- Resets all player features for every player.
function FeatureMgr.ResetAllPlayerFeatures() end

--- Restore the current values with the default values of the feature.
---@param hash integer
---@param index? integer
function FeatureMgr.ResetFeature(hash, index) end

--- Resets all player features for given player id.
---@param playerIndex integer
function FeatureMgr.ResetPlayerFeatures(playerIndex) end

--- Searches the best matching features for a given result. Uses translations for results. You should cache results whenever input changes. Expensive execution time.
---@param input string
---@param maxResults integer
---@param cutoffPercent number
---@return table<integer, int>
function FeatureMgr.SearchFeature(input, maxResults, cutoffPercent) end

--- Sets the color value of the feature.
---@param hash integer
---@param r_or_index integer|integer
---@param g_or_r integer
---@param b_or_g integer
---@param a_or_b integer
---@param nothing_or_a? integer
function FeatureMgr.SetFeatureColor(hash, r_or_index, g_or_r, b_or_g, a_or_b, nothing_or_a) end

--- Sets the float value of the feature.
---@param hash integer
---@param value_or_index number|integer
---@param nothing_or_value? number
function FeatureMgr.SetFeatureFloat(hash, value_or_index, nothing_or_value) end

--- Sets the int value of the feature.
---@param hash integer
---@param value_or_index integer
---@param nothing_or_value? integer
function FeatureMgr.SetFeatureInt(hash, value_or_index, nothing_or_value) end

--- Sets the current index of the feature list.
---@param hash integer
---@param listIndex_or_index integer
---@param nothing_or_listIndex? integer
function FeatureMgr.SetFeatureListIndex(hash, listIndex_or_index, nothing_or_listIndex) end

--- Sets the string value of the feature.
---@param hash integer
---@param value_or_index string|integer
---@param nothing_or_value? string
function FeatureMgr.SetFeatureString(hash, value_or_index, nothing_or_value) end

--- Flips the current boolean value of the feature.
---@param hash integer
---@param index? integer
function FeatureMgr.ToggleFeature(hash, index) end

---@param hash integer
---@param index? integer
function FeatureMgr.TriggerFeatureCallback(hash, index) end

---@class FileMgr
FileMgr = {}

--- Ensures that the given path is a directory.
---@param path string
---@return boolean
function FileMgr.CreateDir(path) end

--- Deletes the given file using an absolute path.
---@param path string
function FileMgr.DeleteFile(path) end

--- Check whether the file exist using an absolute path.
---@param path string
---@return boolean
function FileMgr.DoesFileExist(path) end

--- Returns a list of all found files.
---@param path string
---@param extension string
---@param recursive boolean
---@return table<integer,string>
function FileMgr.FindFiles(path, extension, recursive) end

--- Returns the root directory of the menu.
---@return string
function FileMgr.GetMenuRootPath() end

--- Reads the file content using an absolute path.
---@param path string
---@return string
function FileMgr.ReadFileContent(path) end

--- Extract a .zip file to a given directory.
---@param zipName string
---@param dir string
---@return boolean
function FileMgr.Unzip(zipName, dir) end

--- Writes the given content to a file using an absolute path.
---@param path string
---@param content string
---@param append? boolean
---@return boolean
function FileMgr.WriteFileContent(path, content, append) end

---@class GTA
GTA = {}

--- Adds a chat message locally on your pc only. You can specify the sender of the message. The message has a max length of 255 characters.
---@param playerId integer
---@param message string
---@param team boolean
function GTA.AddChatMessageToPool(playerId, message, team) end

--- Add an explosion without any restrictions.
---@param args CExplosionArgs
---@return boolean
function GTA.AddExplosion(args) end

--- Adds an item to the Basket Transaction.
---@param items table<integer, int>
---@return boolean
function GTA.BasketAddItem(items) end

--- Initializes a Basket Transaction.
---@param category integer
---@param action integer
---@param flags integer
---@return boolean, integer
function GTA.BasketStart(category, action, flags) end

--- Initializes a new Service Transaction.
---@param type integer
---@param category integer
---@param service integer
---@param action integer
---@param price integer
---@param flags integer
---@return boolean, integer
function GTA.BeginService(type, category, service, action, price, flags) end

--- Starts the checkout of a transaction. Should be used for services and baskets.
---@param transactionId integer
---@return boolean
function GTA.CheckoutStart(transactionId) end

--- Converts the sector pos to world cords.
---@param sectorIn V3
---@param relativePos V3
---@return V3
function GTA.ConvertSectorToWorldPosition(sectorIn, relativePos) end

--- Converts the world pos to sector and relative position. This is being used in sync data nodes to sync the actual position of entities.
---@param pos V3
---@return V3, V3
function GTA.ConvertWorldToSectorPosition(pos) end

--- Spawns an object. Should only be executed in a native thread.
---@param hash_or_model integer|string
---@param x float
---@param y float
---@param z float
---@param dynamic boolean
---@param isNetworked? boolean
---@return integer
function GTA.CreateObject(hash_or_model, x, y, z, dynamic, isNetworked) end

--- Spawns a ped. Should only be executed in a native thread.
---@param hash_or_model integer|string
---@param pedType integer
---@param x float
---@param y float
---@param z float
---@param heading number
---@param isNetworked? boolean
---@param autoCleanup? boolean
---@return integer
function GTA.CreatePed(hash_or_model, pedType, x, y, z, heading, isNetworked, autoCleanup) end

--- Creates a random ped. Should only be executed in a native thread.
---@param x float
---@param y float
---@param z float
---@return integer
function GTA.CreateRandomPed(x, y, z) end

--- Spawns an world object using a bypass. Should only be executed in a native thread.
---@param hash_or_model integer|string
---@param x float
---@param y float
---@param z float
---@param dynamic boolean
---@param isNetworked? boolean
---@return integer
function GTA.CreateWorldObject(hash_or_model, x, y, z, dynamic, isNetworked) end

--- Renders a given CPed on the frontend.
---@param ped CPed
---@param relativeScreen V2
---@param size V2
---@param distance float
---@param pitch float
---@param yaw float
---@param lightning float
function GTA.DrawPedPreview(ped, relativeScreen, size, distance, pitch, yaw, lightning) end

--- Forces yourself to script host of the given script.
---@param scriptHash integer
function GTA.ForceScriptHost(scriptHash) end

--- Does the same as GetBonePos3D and then converts them to normalized screen coordinates.
---@param ped CPed
---@param wMask integer
---@return V2
function GTA.GetBonePos2D(ped, wMask) end

--- Gets the bone world position based on the specified ped and mask.
---@param ped CPed
---@param wMask integer
---@return V3
function GTA.GetBonePos3D(ped, wMask) end

--- Returns the display name of a specific hash.
---@param hash integer
---@return string
function GTA.GetDisplayNameFromHash(hash) end

--- Returns whether the ground was found and the Z coordinate it was found at.
---@param x number
---@param y number
---@return boolean, number
function GTA.GetGroundZ(x, y) end

--- Returns a specific label for a given text entry.
---@param str_or_hash string|integer
---@return string
function GTA.GetLabelText(str_or_hash) end

--- Returns the local player CPed. Might be nil.
---@return CPed
function GTA.GetLocalPed() end

--- Returns the local player id.
---@return integer
function GTA.GetLocalPlayerId() end

--- Returns the local player's current CVehicle. Might be nil.
---@return CVehicle
function GTA.GetLocalVehicle() end

--- Returns Model Info by hash. Returns nil if no CBaseModelInfo found.
---@param hash integer
---@return CBaseModelInfo
function GTA.GetModelInfoFromHash(hash) end

--- Returns Model Info Index by hash. Returns -1 if invalid.
---@param hash integer
---@return integer
function GTA.GetModelInfoIndexFromHash(hash) end

--- Returns the model name of the model hash.
---@param hash integer
---@return string
function GTA.GetModelNameFromHash(hash) end

--- Returns sucess and the name.
---@param scriptEvent integer
---@return boolean, string
function GTA.GetScriptEventName(scriptEvent) end

--- Force another player take control of the given entity.
---@param playerId integer
---@param iEntity integer
function GTA.GiveControl(playerId, iEntity) end

--- Give a sepcific player script host of the given script.
---@param playerId integer
---@param scriptHash integer
function GTA.GiveScriptHost(playerId, scriptHash) end

--- Converts an entity handle into a CPhysical pointer.
---@param handle integer
---@return CPhysical
function GTA.HandleToPointer(handle) end

--- Converts a CPhysical pointer into an entity handle.
---@param ptr CPhysical
---@return integer
function GTA.PointerToHandle(ptr) end

--- Registers the given file for the game so it can be used by natives.
---@param path string
---@return boolean
function GTA.RegisterFile(path) end

---@param label string
function GTA.RemoveLabelText(label) end

--- Sends a chat message to every player in the session. Note: You won't see that message yourself unless you manually add it to the chat pool. The message has a max length of 255 characters.
---@param message string
---@param team boolean
function GTA.SendChatMessageToEveryone(message, team) end

--- Sends a chat message to a given player in the session. Note: You won't see that message yourself unless you manually add it to the chat pool. The message has a max length of 255 characters.
---@param playerId integer
---@param message string
---@param team boolean
function GTA.SendChatMessageToPlayer(playerId, message, team) end

--- Overwrites the text for a specifc label which is being used by the game.
---@param label string
---@param text string
function GTA.SetLabelText(label, text) end

--- Should only be executed in a native thread.
---@param hash_or_model integer|string
---@param x float
---@param y float
---@param z float
---@param heading number
---@param isNetworked? boolean
---@param autoCleanup? boolean
---@return integer
function GTA.SpawnVehicle(hash_or_model, x, y, z, heading, isNetworked, autoCleanup) end

--- Spawns a vehicle in front of the given player. Should only be executed in a native thread.
---@param hash_or_model integer|string
---@param player integer
---@param forward? number
---@return integer
function GTA.SpawnVehicleForPlayer(hash_or_model, player, forward) end

--- Triggers a script event for given player(s).
---@param bitflags integer
---@param arguments table<integer, int>
---@return integer
function GTA.TriggerScriptEvent(bitflags, arguments) end

--- Converts a 3D world position to a 2D normalized screen position. To get the actual screen coordinates multiply them with the screen size.
---@param x float
---@param y float
---@param z float
---@return float, float
function GTA.WorldToScreen(x, y, z) end

---@class GUI
GUI = {}

--- Creates a toast notification.
---@param title string
---@param text string
---@param duration integer
---@param pos eToastPos
---@return boolean
function GUI.AddToast(title, text, duration, pos) end

--- Returns which GUI Mode is currently rendering. Usefull when Both GUIs are rendering in the same frame.
---@return eGuiMode
function GUI.GetCurrentRenderMode() end

--- Returns the current GUI mode.
---@return eGuiMode
function GUI.GetMode() end

--- Returns whether the GUI is open or not.
---@return boolean
function GUI.IsOpen() end

--- Sets the current GUI Mode
---@param mode eGuiMode
function GUI.SetMode(mode) end

--- Toggle the GUI.
function GUI.Toggle() end

---@class GadgetData
---@field public Data table<integer, int>
---@field public Type integer int32_t
GadgetData = {}

---@class GamerHandle
---@field public Platform any
---@field public RockstarId any
---@field public UNK1 any
GamerHandle = {}

--- Returns true if the GamerHandle is valid.
---@return boolean
function GamerHandle:IsValid() end

--- Create a new GamerHandle object.
---@param rockstarId? integer
---@return GamerHandle
function GamerHandle.New(rockstarId) end

--- Converts the GamerHandle into a GamerHandleBuffer used by most natives.
---@return GamerHandleBuffer
function GamerHandle:ToBuffer() end

---@class GamerHandleBuffer
GamerHandleBuffer = {}

--- Returns the buffer address.
---@return integer
function GamerHandleBuffer:GetBuffer() end

--- Returns the size of the GamerHandleBuffer.
---@return integer
function GamerHandleBuffer:GetSize() end

--- Create a new GamerHandleBuffer object.
---@return GamerHandleBuffer
function GamerHandleBuffer.New() end

--- Converts the GamerHandleBuffer into a GamerHandle.
---@return GamerHandle
function GamerHandleBuffer:ToHandle() end

---@class GamerInfo
---@field public HostKey any
---@field public Name any
---@field public RockstarId any
GamerInfo = {}

---@class HotKeyMgr
HotKeyMgr = {}

--- Adds a new hotkey for a feature.
---@param hash integer
---@param key integer
function HotKeyMgr.AddHotkey(hash, key) end

--- Returns all hotkeys and their associated feature hash.
---@return table<integer, table<integer, int>>
function HotKeyMgr.GetAllHotkeys() end

--- Returns all hotkeys for a specific feature hash.
---@param hash integer
---@return table<integer, int>
function HotKeyMgr.GetHotKeys(hash) end

--- Removes specific hotkey from an feature.
---@param hash integer
---@param key integer
function HotKeyMgr.RemoveHotkey(hash, key) end

---@class ListGUI
ListGUI = {}

--- Returns the top most tab.
---@return Tab
function ListGUI.GetCurrentTab() end

--- Returns a specific player tab. (ranges from 0-31).
---@param player integer
---@return Tab
function ListGUI.GetPlayerTab(player) end

--- Get the current position in screen coordinates.
---@return number x, number y
function ListGUI.GetPos() end

--- Returns the root tab.
---@return Tab
function ListGUI.GetRootTab() end

--- Get the current size in screen coordinates.
---@return number x, number y
function ListGUI.GetSize() end

--- Loads a Theme by its name.
---@param fileName string
---@return boolean
function ListGUI.LoadTheme(fileName) end

--- Remoces the tab from the stack and jump back to the tab before.
---@param tab Tab
function ListGUI.RemoveTabFromStack(tab) end

--- Adds the tab to the tab stack or jumps back if it is already in the tab stack.
---@param tab Tab
function ListGUI.SetCurrentTab(tab) end

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
function ListWidget:GetDesc() end

---@return string
function ListWidget:GetText() end

---@return boolean
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
---@param size? integer|24
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

--- Calls a function with user-defined arguments.
---@param addr integer
---@param ... any
function Memory.LuaCallCFunction(addr, ...) end

--- Calls a function with user-defined arguments and returns a pointer to the return value. You must free the return value yourself using Memory.Free.
---@param addr integer
---@param ... any
---@return integer
function Memory.LuaCallCFunctionWithReturnValue(addr, ...) end

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

--- Scans for a given pattern in a specific script and returns the address if found.
---@param scriptHash integer
---@param pattern string
---@return integer
---@nodiscard
function Memory.ScanScript(scriptHash, pattern) end

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

--- Detection format: name, count, lastTime.
---@param rockstarId integer
---@return table<integer, table>
---@nodiscard
function ModderDB.GetModderDetections(rockstarId) end

--- Detection format: name, count, lastTime.
---@param playerId integer
---@return table<integer, table>
---@nodiscard
function ModderDB.GetModderDetectionsByPlayerId(playerId) end

---@param rockstarId integer
---@param reason string
---@return boolean
function ModderDB.RemoveModder(rockstarId, reason) end

---@param rockstarId integer
---@param reason string
---@return boolean
function ModderDB.RemoveModderDetection(rockstarId, reason) end

---@class Natives
Natives = {}

--- Call a native that returns a boolean.
---@param hash integer
---@param ... any
---@return boolean
function Natives.InvokeBool(hash, ...) end

--- Call a native that returns a float.
---@param hash integer
---@param ... any
---@return number
function Natives.InvokeFloat(hash, ...) end

--- Call a native that returns an integer.
---@param hash integer
---@param ... any
---@return integer
function Natives.InvokeInt(hash, ...) end

--- Call a native that returns a pointer.
---@param hash integer
---@param ... any
---@return integer
function Natives.InvokePointer(hash, ...) end

--- Call a native that returns a string.
---@param hash integer
---@param ... any
---@return string
function Natives.InvokeString(hash, ...) end

--- Call a native that returns three floats representing a V3.
---@param hash integer
---@param ... any
---@return number, number, number
function Natives.InvokeV3(hash, ...) end

--- Call a native that does not return a value.
---@param hash integer
---@param ... any
function Natives.InvokeVoid(hash, ...) end

---@class NetAddress
---@field public ProxyAddr SocketAddress
---@field public TargetAddr SocketAddress
---@field public Type NetAddressType
NetAddress = {}

---@class NetworkObjectMgr
NetworkObjectMgr = {}

--- Changes the ownership of a network object.
---@param object CNetObject
---@param player CNetGamePlayer
---@param migrationType integer
function NetworkObjectMgr.ChangeOwner(object, player, migrationType) end

--- includeAll - If this flag is set the function will also return unregistering objects and those being reassigned
---@param netId integer
---@param includeAll? boolean
---@return CNetObject?
---@nodiscard
function NetworkObjectMgr.GetNetworkObject(netId, includeAll) end

--- Unregisters a network object with the manager and removes clones on remote machines if necessary.
---@param object CNetObject
---@param reason integer
---@param bForce boolean
---@param bDestroyObject boolean
function NetworkObjectMgr.UnregisterNetworkObject(object, reason, bForce, bDestroyObject) end

---@class PlayerGameStateFlags
---@field public PRF_BlockRemotePlayerRecording boolean
---@field public PRF_UseScriptedWeaponFirePosition boolean
---@field public PlayerPreferFrontSeat boolean
---@field public allowBikeAlternateAnimations boolean
---@field public bHasMaxHealth boolean
---@field public bHasMicrophone boolean
---@field public bHelmetHasBeenShot boolean
---@field public bInvincible boolean
---@field public cantBeKnockedOffBike integer
---@field public controlsDisabledByScript boolean
---@field public disableHelmetArmor boolean
---@field public disableHomingMissileLockForVehiclePedInside boolean
---@field public disableStartEngine boolean
---@field public disableVehicleCombat boolean
---@field public dontActivateRagdollFromExplosions boolean
---@field public dontActivateRagdollFromVehicleImpact boolean
---@field public dontDragMeOutOfCar boolean
---@field public dontTakeOffHelmet boolean
---@field public everybodyBackOff boolean
---@field public forceHelmetVisorSwitch boolean
---@field public hasHelmet boolean
---@field public hasSetJackSpeed boolean
---@field public ignoreInteriorCheckForSprinting boolean
---@field public ignoreMeleeFistWeaponDamageMult boolean
---@field public ignoresExplosions boolean
---@field public inTutorial boolean
---@field public isAntagonisticToPlayer boolean
---@field public isPerformingVehicleMelee boolean
---@field public isScuba boolean
---@field public isSpectating boolean
---@field public isSwitchingHelmetVisor boolean
---@field public lawOnlyAttackIfPlayerIsWanted boolean
---@field public lawPedsCanFleeFromNonWantedPlayer boolean
---@field public myVehicleIsMyInteresting boolean
---@field public neverTarget boolean
---@field public newMaxHealthArmour boolean
---@field public noCriticalHits boolean
---@field public notDamagedByBullets boolean
---@field public notDamagedByCollisions boolean
---@field public notDamagedByFlames boolean
---@field public notDamagedByMelee boolean
---@field public notDamagedBySmoke boolean
---@field public notDamagedBySteam boolean
---@field public pedIsArresting boolean
---@field public pendingTutorialSessionChange boolean
---@field public playerIsWeird boolean
---@field public playersDontDragMeOutOfCar boolean
---@field public randomPedsFlee boolean
---@field public respawning boolean
---@field public swatHeliSpawnWithinLastSpottedLocation boolean
---@field public treatFriendlyTargettingAndDamage boolean
---@field public useKinematicModeWhenStationary boolean
---@field public useKinematicPhysics boolean
---@field public useLockpickVehicleEntryAnimations boolean
---@field public useOverrideFootstepPtFx boolean
---@field public willJackAnyPlayer boolean
---@field public willJackWantedPlayersRatherThanStealCar boolean
PlayerGameStateFlags = {}

---@class Players
Players = {}

--- Returns the players for a given filter.
---@param filter? ePlayerListSort
---@param search? string
---@return integer[] players
---@nodiscard
function Players.Get(filter, search) end

--- Returns the NetGamePlayer for a given connection id.
---@param cxn integer
---@return CNetGamePlayer?
---@nodiscard
function Players.GetByConId(cxn) end

--- Returns the NetGamePlayer for a given endpoint id.
---@param ep integer
---@return CNetGamePlayer?
---@nodiscard
function Players.GetByEndpointId(ep) end

--- Returns the NetGamePlayer for a given gamer id.
---@param gamerId integer
---@return CNetGamePlayer?
---@nodiscard
function Players.GetByGamerId(gamerId) end

--- Returns the NetGamePlayer for a given ip.
---@param addr SocketAddress|integer
---@return CNetGamePlayer?
---@nodiscard
function Players.GetByIP(addr) end

--- Returns the NetGamePlayer for a given playerId.
---@param playerId integer
---@return CNetGamePlayer?
---@nodiscard
function Players.GetById(playerId) end

--- Returns the NetGamePlayer for a given peer id.
---@param peerId integer
---@return CNetGamePlayer?
---@nodiscard
function Players.GetByPeerId(peerId) end

--- Returns the NetGamePlayer for a given rockstar id.
---@param rid integer
---@return CNetGamePlayer?
---@nodiscard
function Players.GetByRockstarId(rid) end

--- Gets the player's CPed.
---@param playerId integer
---@return CPed?
---@nodiscard
function Players.GetCPed(playerId) end

--- Gets the player's cam position.
---@param playerId integer
---@return V3
---@nodiscard
function Players.GetCam(playerId) end

--- Gets the player's cam rotation in eulers.
---@param playerId integer
---@return V3
---@nodiscard
function Players.GetCamRot(playerId) end

--- Returns the player SocketAddress.
---@param playerId integer
---@return SocketAddress?
---@nodiscard
function Players.GetIP(playerId) end

--- Returns info about players ip.
---@param playerId integer
---@return table<string, string>
---@nodiscard
function Players.GetIPInfo(playerId) end

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
---@return NetAddress?
---@nodiscard
function Players.GetNetAddress(playerId) end

--- Returns the player tags as string.
---@param playerId integer
---@return string
---@nodiscard
function Players.GetTags(playerId) end

--- Gets if the player has a waypoint, the position of the waypoint, and the owner of the waypoint.
---@param playerId integer
---@return boolean, V3, integer
---@nodiscard
function Players.GetWaypoint(playerId) end

---@class PoolMgr
PoolMgr = {}

--- Return the camera class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CPhysical?
---@nodiscard
function PoolMgr.GetCCamera(index) end

--- Return the object class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CPhysical?
---@nodiscard
function PoolMgr.GetCObject(index) end

--- Return the ped class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CPed?
---@nodiscard
function PoolMgr.GetCPed(index) end

--- Return the pickup class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CPhysical?
---@nodiscard
function PoolMgr.GetCPickup(index) end

--- Return the vehicle class object. Can have a performance impact if called to frequently.
---@param index integer
---@return CVehicle?
---@nodiscard
function PoolMgr.GetCVehicle(index) end

--- Return the camera handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer cameraIndex Check if `cameraIndex ~= -1`
---@nodiscard
function PoolMgr.GetCamera(index) end

--- Return the current amount of cameras.
--- Do not use if you want to iterate over the pool, use `PoolMgr.GetMaxCameraCount()` instead.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentCameraCount() end

--- Return the current amount of objects.
--- Do not use if you want to iterate over the pool, use `PoolMgr.GetMaxObjectCount()` instead.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentObjectCount() end

--- Return the current amount of peds.
--- Do not use if you want to iterate over the pool, use `PoolMgr.GetMaxPedCount()` instead.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentPedCount() end

--- Return the current amount of pickups.
--- Do not use if you want to iterate over the pool, use `PoolMgr.GetMaxPickupCount()` instead.
---@return integer
---@nodiscard
function PoolMgr.GetCurrentPickupCount() end

--- Return the current amount of vehicles.
--- Do not use if you want to iterate over the pool, use `PoolMgr.GetMaxVehicleCount()` instead.
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
---@return integer objectIndex Check if `objectIndex ~= -1`
---@nodiscard
function PoolMgr.GetObject(index) end

--- Return the ped handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer pedIndex Check if `pedIndex ~= -1`
---@nodiscard
function PoolMgr.GetPed(index) end

--- Return the pickup handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer pickupIndex Check if `pickupIndex ~= -1`
---@nodiscard
function PoolMgr.GetPickup(index) end

--- Return all currrently rendered CObject pointers
---@return CObject[]
---@nodiscard
function PoolMgr.GetRenderedObjects() end

--- Return all currrently rendered CPed pointers
---@return CPed[]
---@nodiscard
function PoolMgr.GetRenderedPeds() end

--- Return all currrently rendered CVehicle pointers
---@return CVehicle[]
---@nodiscard
function PoolMgr.GetRenderedVehicles() end

--- Return the vehicle handle for a specific index. Can have a performance impact if called to frequently.
---@param index integer
---@return integer vehicleIndex Check if `vehicleIndex ~= -1`
---@nodiscard
function PoolMgr.GetVehicle(index) end

---@class Script
Script = {}

--- Changes the current script context to your desired script, calls your function and then restores the orignal script context.
---@param scriptName_or_hash string|integer
---@param fn function
function Script.ExecuteAsScript(scriptName_or_hash, fn) end

--- Queues a function that will be exeucted in a native thread.
---@param func function
---@param ... any
---@return integer
function Script.QueueJob(func, ...) end

--- Register a script that will be called in a loop.
---@param func function
---@param ... any
---@return integer
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
---@param localHandle integer
---@return boolean
---@nodiscard
function ScriptLocal.GetBool(scriptHash, localHandle) end

---@param scriptHash integer
---@param localHandle integer
---@return number
---@nodiscard
function ScriptLocal.GetFloat(scriptHash, localHandle) end

---@param scriptHash integer
---@param localHandle integer
---@return integer
---@nodiscard
function ScriptLocal.GetInt(scriptHash, localHandle) end

---@param scriptHash integer
---@param global integer
---@return integer
---@nodiscard
function ScriptLocal.GetPtr(scriptHash, global) end

---@param scriptHash integer
---@param localHandle integer
---@return string
---@nodiscard
function ScriptLocal.GetString(scriptHash, localHandle) end

---@param scriptHash integer
---@param localHandle integer
---@param value boolean
function ScriptLocal.SetBool(scriptHash, localHandle, value) end

---@param scriptHash integer
---@param localHandle integer
---@param value number
function ScriptLocal.SetFloat(scriptHash, localHandle, value) end

---@param scriptHash integer
---@param localHandle integer
---@param value integer
function ScriptLocal.SetInt(scriptHash, localHandle, value) end

---@param scriptHash integer
---@param localHandle integer
---@param text string
function ScriptLocal.SetString(scriptHash, localHandle, text) end

--- Mark the script as done. It will automatically be unloaded by the menu.
function SetShouldUnload() end

--- Check if the script should unload. Use this to exit all your loops etc.
---@return boolean
function ShouldUnload() end

---@class SocketAddress
---@field public IPv4 integer This value is a raw 4 byte integer.
---@field public Port integer
SocketAddress = {}

---@param port boolean
---@return string
function SocketAddress:ToString(port) end

---@class Stats
Stats = {}

---@param hash integer
---@return boolean, integer
function Stats.GetBool(hash) end

---@param hash integer
---@return boolean, number
function Stats.GetFloat(hash) end

---@param hash integer
---@return boolean, integer
function Stats.GetInt(hash) end

---@param hash integer
---@param value integer
---@return boolean
function Stats.SetBool(hash, value) end

---@param hash integer
---@param value number
---@return boolean
function Stats.SetFloat(hash, value) end

---@param hash integer
---@param value integer
---@return boolean
function Stats.SetInt(hash, value) end

---@class Tab
Tab = {}

--- Adds a feature to the tab.
---@param hash integer
---@param index? integer
function Tab:AddFeature(hash, index) end

---@param text string
function Tab:AddSeperator(text) end

--- Adds Tab Button and returns the created tab.
---@param text string
---@param desc string
---@return Tab
function Tab:AddSubTab(text, desc) end

---@param index integer
---@return ListWidget
function Tab:GetContent(index) end

--- Returns the number of widgets in this tab.
---@return integer
function Tab:GetContentSize() end

---@return string
function Tab:GetDesc() end

---@return ListWidget
function Tab:GetSelectedContent() end

---@return integer
function Tab:GetSelectedContentId() end

--- Returns a sub tab by name.
---@param text string
---@return Tab
function Tab:GetSubTab(text) end

---@return string
function Tab:GetText() end

--- Removes a sub tab and returns the amount of removed tab buttons.
---@param tab Tab
---@return integer
function Tab:RemoveSubTab(tab) end

---@param desc string
function Tab:SetDesc(desc) end

---@param index integer
function Tab:SetSelectedContentId(index) end

---@param text string
function Tab:SetText(text) end

---@class CTaskData
---@field public TaskData table<integer, int>
---@field public TaskDataSize integer
---@field public TaskType integer
CTaskData = {}

---@class TaskSlotData
---@field public taskActive boolean
---@field public taskPriority integer
---@field public taskSequenceId integer
---@field public taskTreeDepth integer
---@field public taskType integer
TaskSlotData = {}

---@class Texture
Texture = {}

---@param id integer
---@return D3D12Texture
function Texture.GetTexture(id) end

---@param id integer
---@return boolean
function Texture.IsTextureValid(id) end

--- Creates a new texture that can load files such as gif,jpg,png etc.
---@param file string
---@return integer
function Texture.LoadTexture(file) end

--- Creates a new texture that can load files such as gif,jpg,png etc.
---@param file string
---@return integer
function Texture.LoadTextureAsync(file) end

---@class Time
Time = {}

--- Retrieves the current system time in seconds.
---@return integer
function Time.Get() end

--- Retrieves the time since Epoche in seconds.
---@return integer
function Time.GetEpoche() end

--- Retrieves the time since Epoche in milliseconds.
---@return integer
function Time.GetEpocheMs() end

--- Retrieves the time since Epoche in nanoseconds, might not equal system time.
---@return integer
function Time.GetEpocheNs() end

---@class Utils
Utils = {}

--- Executes the given script. File can be relative or absolute.
---@param file string
---@return boolean
function Utils.ExecuteScript(file) end

---@return string
function Utils.GetClipBoardText() end

--- Returns the last joined player id.
---@return integer
function Utils.GetLastJoinedPlayer() end

--- Returns the last joined player id.
---@return integer
function Utils.GetLastLeftPlayer() end

--- Returns the current selected player id.
---@return integer
function Utils.GetSelectedPlayer() end

--- Check if a key is down. Use the Microsoft Virtual Key Codes.
---@param vk integer
---@return boolean
function Utils.IsKeyDown(vk) end

--- Check if a key has been pressed or is hold down for longer time. Use the Microsoft Virtual Key Codes.
---@param vk integer
---@return boolean
function Utils.IsKeyPressed(vk) end

--- Hashes a string using joaat. Returns the hash as unsigned int.
---@param str string
---@return integer
function Utils.Joaat(str) end

--- The mciSendString function sends a command string to an MCI device.
---@param str string
---@return boolean
function Utils.MciSendString(str) end

--- Can be used to play mp3 or wav files.
---@param str string
---@param looped boolean
---@return boolean
function Utils.PlaySound(str, looped) end

--- For no extra notification leave whatNotify empty.
---@param text string
---@param whatNotify string
function Utils.SetClipBoardText(text, whatNotify) end

--- Sets the current selected Player Id. Returns the previous selected player id.
---@param playerId integer
---@return integer
function Utils.SetSelectedPlayer(playerId) end

--- Stops all currently played sounds.
function Utils.StopSound() end

--- Hashes a string using joaat. Returns the hash as signed int.
---@param str string
---@return integer
function Utils.sJoaat(str) end

---@class V2
---@field public x number
---@field public y number
V2 = {}

--- Add a value to a V2.
---@param vector V2
---@param value number|V2
---@return V2
function V2.Add(vector, value) end

--- Multiply a value with a V2.
---@param vector V2
---@param value number|V2
---@return V2
function V2.Multiply(vector, value) end

--- Create a new V2 object.
---@param x? number
---@param y? number
---@param z? number
---@return V2
function V2.New(x, y, z) end

--- Subtract a value from a V2.
---@param vector V2
---@param value number|V2
---@return V2
function V2.Subtract(vector, value) end

---@class V3
---@field public x number
---@field public y number
---@field public z number
V3 = {}

--- Add a value to a V3.
---@param vector V3
---@param value number|V3
---@return V3
function V3.Add(vector, value) end

--- Takes a direction and returns a rotation.
---@param vector V3
---@return V3
function V3.DirectionToRotation(vector) end

--- Multiply a value with a V3.
---@param vector V3
---@param value number|V3
---@return V3
function V3.Multiply(vector, value) end

--- Create a new V3 object.
---@param x? number
---@param y? number
---@param z? number
---@return V3
function V3.New(x, y, z) end

--- Takes a rotation and returns a direction.
---@param vector V3
---@return V3
function V3.RotationToDirection(vector) end

--- Subtract a value from a V3.
---@param vector V3
---@param value number|V3
---@return V3
function V3.Subtract(vector, value) end

---@class V4
---@field public w number
---@field public x number
---@field public y number
---@field public z number
V4 = {}

--- Create a new V4 object.
---@param x? number
---@param y? number
---@param z? number
---@param w? number
---@return V4
function V4.New(x, y, z, w) end

---@enum eCallbackTrigger
eCallbackTrigger = {
    OnNewVehicle = 8,
    OnPlayerJoin = 128,
    OnPlayerLeave = 256,
    OnPlayerPedChange = 2,
    OnPlayerPedRespawn = 4,
    OnPostPresent = 4096,
    OnPresent = 2048,
    OnSessionChange = 64,
    OnTick = 1024,
    OnWeaponChange = 16,
    OnWeaponReloaded = 32
}

---@enum eCurlCode
eCurlCode = {
    CURLE_COULDNT_CONNECT = 0,
    CURLE_COULDNT_RESOLVE_HOST = 1,
    CURLE_COULDNT_RESOLVE_PROXY = 2,
    CURLE_FAILED_INIT = 3,
    CURLE_NOT_BUILT_IN = 5,
    CURLE_OK = 6,
    CURLE_OUT_OF_MEMORY = 7,
    CURLE_REMOTE_ACCESS_DENIED = 8,
    CURLE_UNSUPPORTED_PROTOCOL = 9,
    CURLE_URL_MALFORMAT = 10,
    CURLE_WEIRD_SERVER_REPLY = 4
}

---@enum eCurlOption
eCurlOption = {
    CURLOPT_CUSTOMREQUEST = 0, -- Note: JSON didn't assign explicit values, usually implied.
    CURLOPT_HTTPAUTH = 0, -- JSON order mismatch might imply dynamic enums or standard CURL defines.
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

---@enum eEntityType
eEntityType = {
    BUILDING = 0,
    COMPOSITE = 1,
    DUMMY_OBJECT = 2,
    GRASS_INSTANCE_LIST = 3,
    INSTANCE_LIST = 4,
    LIGHT = 5,
    MLO = 6,
    NOTHING = 7,
    NOTINPOOLS = 8,
    OBJECT = 9,
    PARTICLESYSTEM = 10,
    PED = 11,
    PORTAL = 12,
    TOTAL = 13,
    VEHICLE = 14,
    VEHICLEGLASSCOMPONENT = 15
}

---@enum eExplosionTag
eExplosionTag = {
    EXP_TAG_AIR_DEFENCE = 0,
    EXP_TAG_APCSHELL = 1,
    EXP_TAG_BALANCED_CANNONS = 2,
    EXP_TAG_BARREL = 3,
    EXP_TAG_BIKE = 4,
    EXP_TAG_BIRD_CRAP = 5,
    EXP_TAG_BLIMP = 6,
    EXP_TAG_BLIMP2 = 7,
    EXP_TAG_BOAT = 8,
    EXP_TAG_BOMBUSHKA_CANNON = 9,
    EXP_TAG_BOMB_CLUSTER = 10,
    EXP_TAG_BOMB_CLUSTER_SECONDARY = 11,
    EXP_TAG_BOMB_GAS = 12,
    EXP_TAG_BOMB_INCENDIARY = 13,
    EXP_TAG_BOMB_STANDARD = 14,
    EXP_TAG_BOMB_STANDARD_WIDE = 15,
    EXP_TAG_BOMB_WATER = 16,
    EXP_TAG_BOMB_WATER_SECONDARY = 17,
    EXP_TAG_BULLET = 18,
    EXP_TAG_BURIEDMINE = 19,
    EXP_TAG_BZGAS = 20,
    EXP_TAG_BZGAS_MK2 = 21,
    EXP_TAG_CAR = 22,
    EXP_TAG_CNC_KINETICRAM = 23,
    EXP_TAG_DIR_FLAME = 24,
    EXP_TAG_DIR_FLAME_EXPLODE = 25,
    EXP_TAG_DIR_GAS_CANISTER = 26,
    EXP_TAG_DIR_STEAM = 27,
    EXP_TAG_DIR_WATER_HYDRANT = 28,
    EXP_TAG_DONTCARE = 29,
    EXP_TAG_EMPLAUNCHER_EMP = 30,
    EXP_TAG_EXPLOSIVEAMMO = 31,
    EXP_TAG_EXPLOSIVEAMMO_SHOTGUN = 32,
    EXP_TAG_EXTINGUISHER = 33,
    EXP_TAG_FIREWORK = 34,
    EXP_TAG_FLARE = 35,
    EXP_TAG_FLASHGRENADE = 36,
    EXP_TAG_GAS_CANISTER = 37,
    EXP_TAG_GAS_TANK = 38,
    EXP_TAG_GRENADE = 39,
    EXP_TAG_GRENADELAUNCHER = 40,
    EXP_TAG_HI_OCTANE = 41,
    EXP_TAG_HUNTER_BARRAGE = 42,
    EXP_TAG_HUNTER_CANNON = 43,
    EXP_TAG_MINE_CNCSPIKE = 44,
    EXP_TAG_MINE_UNDERWATER = 45,
    EXP_TAG_MOLOTOV = 46,
    EXP_TAG_MORTAR_KINETIC = 47,
    EXP_TAG_OPPRESSOR2_CANNON = 48,
    EXP_TAG_ORBITAL_CANNON = 49,
    EXP_TAG_PETROL_PUMP = 50,
    EXP_TAG_PIPEBOMB = 51,
    EXP_TAG_PLANE = 52,
    EXP_TAG_PLANE_ROCKET = 53,
    EXP_TAG_PROGRAMMABLEAR = 54,
    EXP_TAG_PROPANE = 55,
    EXP_TAG_PROXMINE = 56,
    EXP_TAG_RAILGUN = 57,
    EXP_TAG_RAILGUNXM3 = 58,
    EXP_TAG_RAYGUN = 59,
    EXP_TAG_RCTANK_ROCKET = 60,
    EXP_TAG_ROCKET = 61,
    EXP_TAG_ROGUE_CANNON = 62,
    EXP_TAG_SCRIPT_DRONE = 63,
    EXP_TAG_SCRIPT_MISSILE = 64,
    EXP_TAG_SCRIPT_MISSILE_LARGE = 65,
    EXP_TAG_SHIP_DESTROY = 66,
    EXP_TAG_SMOKE_GRENADE = 67,
    EXP_TAG_SMOKE_GRENADE_LAUNCHER = 68,
    EXP_TAG_SNOWBALL = 69,
    EXP_TAG_STICKYBOMB = 70,
    EXP_TAG_STUNGRENADE = 71,
    EXP_TAG_SUBMARINE_BIG = 72,
    EXP_TAG_TANKER = 73,
    EXP_TAG_TANKSHELL = 74,
    EXP_TAG_TORPEDO = 75,
    EXP_TAG_TORPEDO_UNDERWATER = 76,
    EXP_TAG_TRAIN = 77,
    EXP_TAG_TRUCK = 78,
    EXP_TAG_VALKYRIE_CANNON = 79,
    EXP_TAG_VEHICLEMINE = 80,
    EXP_TAG_VEHICLEMINE_EMP = 81,
    EXP_TAG_VEHICLEMINE_KINETIC = 82,
    EXP_TAG_VEHICLEMINE_SLICK = 83,
    EXP_TAG_VEHICLEMINE_SPIKE = 84,
    EXP_TAG_VEHICLEMINE_TAR = 85,
    EXP_TAG_VEHICLE_BULLET = 86,
    NUM_EEXPLOSIONTAG = 87
}

---@enum eFeatureType
eFeatureType = {
    Button = 0,
    Combo = 1,
    ComboToggles = 2,
    Custom = 3,
    InputColor3 = 4,
    InputColor4 = 5,
    InputFloat = 6,
    InputInt = 7,
    InputText = 8,
    List = 9,
    ListWithInfo = 10,
    SliderFloat = 11,
    SliderFloatToggle = 12,
    SliderInt = 13,
    SliderIntToggle = 14,
    Toggle = 15
}

---@enum eGuiMode
eGuiMode = {
    Both = 0,
    ClickGUI = 1,
    ListGUI = 2
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

---@enum eLuaEvent
eLuaEvent = {
    NET_EVENT = 0,
    ON_CHAT_MESSAGE = 1,
    ON_PLAYER_JOIN = 2,
    ON_PLAYER_LEFT = 3,
    ON_PLAYER_PED_CHANGE = 4,
    ON_PLAYER_PED_RESPAWN = 5,
    ON_POST_PRESENT = 6,
    ON_PRESENT = 7,
    ON_REACTION = 8,
    ON_SESSION_CHANGE = 9,
    ON_SYNC_DATA_NODE = 10,
    ON_UNLOAD = 11,
    ON_VEHICLE_CHANGE = 12,
    ON_WEAPON_CHANGE = 13,
    ON_WEAPON_RELOADED = 14,
    SCRIPTED_GAME_EVENT = 15,
    SHOULD_COLLIDE = 16,
    SHOULD_TRIGGER_EXCLUSIVE_SYNC = 17
}

---@enum ePlayerListSort
ePlayerListSort = {
    ALPHABETICAL = 0,
    DISTANCE = 1,
    HOST_QUEUE = 2,
    PLAYER_ID = 3
}

---@enum eProtectionType
eProtectionType = {
    AIMING_AT_YOU = 0,
    BAD_SCRIPT_EVENT = 1,
    CHAT_BANNED_WORD = 2,
    CHAT_SPAM = 3,
    CRASH = 4,
    KICK = 5,
    REPORT = 6,
    SHOOTING_AT_YOU = 7,
    SPECTATING_YOU = 8,
    UNKNOWN = 9,
    VOTE_KICK = 10
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

---@enum eSyncDataNode
eSyncDataNode = {
    CAutomobileCreationDataNode = 0,
    CBikeGameStateDataNode = 1,
    CBoatGameStateDataNode = 2,
    CDoorCreationDataNode = 3,
    CDoorMovementDataNode = 4,
    CDoorScriptGameStateDataNode = 5,
    CDoorScriptInfoDataNode = 6,
    CDynamicEntityGameStateDataNode = 7,
    CEntityOrientationDataNode = 8,
    CEntityScriptGameStateDataNode = 9,
    CEntityScriptInfoDataNode = 10,
    CGlobalFlagsDataNode = 11,
    CHeliControlDataNode = 12,
    CHeliHealthDataNode = 13,
    CMigrationDataNode = 14,
    CObjectCreationDataNode = 15,
    CObjectGameStateDataNode = 16,
    CObjectOrientationNode = 17,
    CObjectScriptGameStateDataNode = 18,
    CObjectSectorPosNode = 19,
    CPedAIDataNode = 20,
    CPedAppearanceDataNode = 21,
    CPedAttachDataNode = 22,
    CPedComponentReservationDataNode = 23,
    CPedCreationDataNode = 24,
    CPedGameStateDataNode = 25,
    CPedHealthDataNode = 26,
    CPedInventoryDataNode = 27,
    CPedMovementDataNode = 28,
    CPedMovementGroupDataNode = 29,
    CPedOrientationDataNode = 30,
    CPedScriptCreationDataNode = 31,
    CPedScriptGameStateDataNode = 32,
    CPedSectorPosMapNode = 33,
    CPedSectorPosNavMeshNode = 34,
    CPedTaskSequenceDataNode = 35,
    CPedTaskSpecificDataNode = 36,
    CPedTaskTreeDataNode = 37,
    CPhysicalAngVelocityDataNode = 38,
    CPhysicalAttachDataNode = 39,
    CPhysicalGameStateDataNode = 40,
    CPhysicalHealthDataNode = 41,
    CPhysicalMigrationDataNode = 42,
    CPhysicalScriptGameStateDataNode = 43,
    CPhysicalScriptMigrationDataNode = 44,
    CPhysicalVelocityDataNode = 45,
    CPickupCreationDataNode = 46,
    CPickupPlacementCreationDataNode = 47,
    CPickupPlacementStateDataNode = 48,
    CPickupScriptGameStateNode = 49,
    CPickupSectorPosNode = 50,
    CPlaneControlDataNode = 51,
    CPlaneGameStateDataNode = 52,
    CPlayerAmbientModelStreamingNode = 53,
    CPlayerAppearanceDataNode = 54,
    CPlayerCameraDataNode = 55,
    CPlayerCreationDataNode = 56,
    CPlayerExtendedGameStateNode = 57,
    CPlayerGameStateDataNode = 58,
    CPlayerGamerDataNode = 59,
    CPlayerPedGroupDataNode = 60,
    CPlayerSectorPosNode = 61,
    CPlayerWantedAndLOSDataNode = 62,
    CSectorDataNode = 63,
    CSectorPositionDataNode = 64,
    CSubmarineControlDataNode = 65,
    CSubmarineGameStateDataNode = 66,
    CTrainGameStateDataNode = 67,
    CVehicleAngVelocityDataNode = 68,
    CVehicleAppearanceDataNode = 69,
    CVehicleComponentReservationDataNode = 70,
    CVehicleControlDataNode = 71,
    CVehicleCreationDataNode = 72,
    CVehicleDamageStatusDataNode = 73,
    CVehicleGadgetDataNode = 74,
    CVehicleGameStateDataNode = 75,
    CVehicleHealthDataNode = 76,
    CVehicleProximityMigrationDataNode = 77,
    CVehicleScriptGameStateDataNode = 78,
    CVehicleSteeringDataNode = 79,
    CVehicleTaskDataNode = 80
}

---@enum eToastPos
eToastPos = {
    BOTTOM_LEFT = 0,
    BOTTOM_RIGHT = 1,
    TOP_LEFT = 2,
    TOP_RIGHT = 3
}

---@class fwAttachmentEntityExtension
---@field public AttachChild CPhysical
---@field public AttachFlags integer
---@field public AttachOffset V3 This is world pos for constraints with world
---@field public AttachParent CPhysical
---@field public AttachParentOffset V3 Attachment offset on parent
---@field public AttachSibling CPhysical
---@field public MyAttachBone integer
---@field public NoCollisionEntity CPhysical
---@field public OtherAttachBone integer
---@field public ThisEntity CPhysical
fwAttachmentEntityExtension = {}

---@return number x, number y, number z, number w
---@nodiscard
function fwAttachmentEntityExtension:GetRotation() end

---@param x number
---@param y number
---@param z number
---@param w number
function fwAttachmentEntityExtension:SetRotation(x, y, z, w) end