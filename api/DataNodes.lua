---@diagnostic disable

---@meta _

---@alias _AnyDataNode CDoorCreationDataNode
---| CDynamicEntityGameStateDataNode
---| CEntityScriptGameStateDataNode
---| CHeliControlDataNode
---| CObjectCreationDataNode
---| CPedAppearanceDataNode
---| CPedAttachDataNode
---| CPedCreationDataNode
---| CPedGameStateDataNode
---| CPedInventoryDataNode
---| CPedMovementDataNode
---| CPedOrientationDataNode
---| CPedScriptCreationDataNode
---| CPhysicalAttachDataNode
---| CPhysicalGameStateDataNode
---| CPhysicalMigrationDataNode
---| CPickupCreationDataNode
---| CPickupPlacementCreationDataNode
---| CPlaneGameStateDataNode
---| CPlayerAppearanceDataNode
---| CPlayerCameraDataNode
---| CPlayerCreationDataNode
---| CPlayerGameStateDataNode
---| CSectorDataNode
---| CSectorPositionDataNode
---| CSubmarineGameStateDataNode
---| CTrainGameStateDataNode
---| CVehicleAppearanceDataNode
---| CVehicleControlDataNode
---| CVehicleCreationDataNode
---| CVehicleGameStateDataNode
---| CVehicleHealthDataNode
---| CVehicleProximityMigrationDataNode
---| CVehicleTaskDataNode

---@class CDoorCreationDataNode
---@field public DoorModel integer # 0xC0
CDoorCreationDataNode = {}

---@class CDynamicEntityGameStateDataNode
---@field public InteriorProxyLoc integer # 0x00C0
---@field public decoratorListCount integer # 0x00C8
---@field public loadsCollisions boolean # 0x00C4
---@field public retained boolean # 0x00C5
CDynamicEntityGameStateDataNode = {}

---@class CEntityScriptGameStateDataNode
---@field public disableCollisionCompletely boolean
---@field public isFixed boolean # gamestate flag indicating whether the object is using fixed physics
---@field public usesCollision boolean # gamestate flag indicating whether the object is using collision
CEntityScriptGameStateDataNode = {}

---@class CHeliControlDataNode
---@field public BVTHControlVertVel boolean # CTaskBringVehicleToHalt bControlVerticalVelocity
---@field public BVTHStoppingDist number # CTaskBringVehicleToHalt stopping dist
---@field public HasTargetGravityScale boolean # For hover vehicles
---@field public HasTopSpeedPercentage boolean
---@field public StickY number
---@field public SubCarDive number # the current value of the dive control for sub cars
---@field public SubCarPitch number # the current value of the pitch control for sub cars
---@field public TargetGravityScale number
---@field public bAllLowriderHydraulicsRaised boolean # CTaskVehiclePlayerDriveAutomobile::ProcessDriverInputsForPlayerOnUpdate; player has raised all lowrider suspension
---@field public bHasLandingGear boolean # if the helicopter has landing gear
---@field public bIsClosingAnyDoor boolean
---@field public bIsNitrousOverrideActive boolean
---@field public bModifiedLowriderSuspension boolean # CTaskVehiclePlayerDriveAutomobile::ProcessDriverInputsForPlayerOnUpdate; player has modified suspension of lowrider
---@field public bNitrousActive boolean
---@field public bPlayHydraulicsActivationSound boolean # Hydraulics sound effect when activated
---@field public bPlayHydraulicsBounceSound boolean # Hydraulics sound effect when bouncing
---@field public bPlayHydraulicsDeactivationSound boolean # Hydraulics sound effect when de-activated
---@field public brakePedal number # the current value of the brake pedal
---@field public bringVehicleToHalt boolean # CTaskBringVehicleToHalt is running as a secondary task
---@field public fLowriderSuspension number[] # Syncs modified lowrider suspension values
---@field public hasActiveAITask boolean # should the heli be fixed if no collision around it?
---@field public hasJetpackStrafeForceScale boolean # does the heli have the jetpack effect
---@field public isInBurnout boolean
---@field public isSubCar boolean
---@field public jetPackStrafeForceScale number # force of jetpack strafe
---@field public jetPackThrusterThrottle number # force of jetpack thrusters
---@field public kersActive boolean # indicates if the kers system is active
---@field public landingGearState integer # landing gear state - if the helicopter has landing gear
---@field public lockedToXY boolean # anchor state for anchorable sea helis
---@field public mainRotorStopped boolean # is the main rotor stopped?
---@field public numWheels integer # number of wheels on this car
---@field public pitchControl number # pitch control of the helicopter
---@field public reducedSuspensionForce boolean # reduced suspension force used to "stance" tuner pack vehicles
---@field public roadNodeAddress integer # the current road node the vehicle is driving from
---@field public rollControl number # roll control of the helicopter
---@field public subCarYaw number # the current value of the yaw control for sub cars
---@field public throttle number # the current value of the throttle
---@field public throttleControl number # throttle control of the helicopter
---@field public topSpeedPercent number # set to the maximum speed a vehicle can travel at
---@field public yawControl number # yaw control of the helicopter
CHeliControlDataNode = {}

---@class CObjectCreationDataNode
---@field public CanBlendWhenFixed boolean # indicates the network blender can run when the object is using fixed physics
---@field public DestroyFrags boolean # if the object is breakable, destroy any frags created by the breaking
---@field public HasExploded boolean # the object has exploded
---@field public IsAmbientFence boolean # the object is an uprooted fence
---@field public IsBroken boolean # the object is broken / damaged
---@field public IsFragObject boolean # this object is a frag object
---@field public KeepRegistered boolean # the object must remain registered
---@field public ScriptGrabPosition V3 # world position script grabbed this object from
---@field public ScriptGrabRadius number # radius used by script to grab this object
---@field public ScriptGrabbedFromWorld boolean # has script grabbed this object from a world position?
---@field public dummyPosition V3 # position of the dummy object this object was instanced from
---@field public fragGroupIndex integer # the frag group index (used by fragment cache objects)
---@field public fragParentVehicle integer # if set, this object is a vehicle fragment and it belongs to this vehicle id
---@field public hasGameObject boolean # is there a prop object associated with this network object?
---@field public hasInitPhysics boolean # has this object initialized physics?
---@field public lodDistance integer
---@field public lodOrphanHd boolean
---@field public modelHash integer # model index
---@field public noReassign boolean # stop the object changing owner
---@field public objectMatrix V3[] # the position of the object (used when the network object has no game object)
---@field public objectPosition V3 # position of the object (used when there is no game object)
---@field public ownedBy integer # created by
---@field public ownershipToken integer # used when there is no associated prop (and sync data) for this network object
---@field public playerWantsControl boolean # does the creating player want control of this object
CObjectCreationDataNode = {}

---@class CObjectSectorPosNode---@field public SectorPosX number # X position of this object within the current sector
---@field public SectorPosY number # Y position of this object within the current sector
---@field public SectorPosZ number # Z position of this object within the current sector
---@field public UseHighPrecision boolean # Indicates whether the position should be synced with high precision
CObjectSectorPosNode = {}

---@class CPedAppearanceDataNode
---@field public PhoneMode integer # for secondary task phone
---@field public facialClipSetId integer # the facial clipset used by the ped
---@field public facialIdleAnimOverrideClipDictNameHash integer # the dictionary used by the ped
---@field public facialIdleAnimOverrideClipNameHash integer # the facial clip used by the ped
---@field public helmetProp integer # what helmet type are we using?
---@field public helmetTextureId integer # what texture are we going to use for the helmet?
---@field public isAttachingHelmet boolean # are we attaching a helmet?
---@field public isRemovingHelmet boolean # are we removing a helmet?
---@field public isVisorSwitching boolean
---@field public isWearingHelmet boolean # are we wearing a helmet?
---@field public parachutePackTintIndex integer # what colour the parachute pack will appear on deployment...
---@field public parachuteTintIndex integer # what colour the parachute will appear on deployment...
---@field public supportsVisor boolean
---@field public targetVisorState integer
---@field public visorDownProp integer # what helmet type are we using?
---@field public visorIsUp boolean
---@field public visorUpProp integer # what helmet type are we using?
CPedAppearanceDataNode = {}

---@class CPedAttachDataNode
---@field public attachBone integer # bone ped is attached to
---@field public attachFlags integer # attachment flags
---@field public attachHeading number # attachment heading
---@field public attachHeadingLimit number # attachment heading limit
---@field public attachOffset V3 # offset from attachment position
---@field public attachQuat V3 # attachment quaternion
---@field public attached boolean # is the ped attached?
---@field public attachedObjectID integer # ID of Object ped is attached to
---@field public attachedToGround boolean # whether the ped is attached to ground or not
CPedAttachDataNode = {}

---@class CPedCreationDataNode
---@field public IsRespawnObjId boolean # is a valid respawn object id
---@field public RespawnFlaggedForRemoval boolean # True if the respawn ped was flagged for removal
---@field public attDamageToPlayer integer # ID of the Player to attribute damage to.
---@field public hasAttDamageToPlayer boolean # True if the ped damage should be attributed to a certain player.
---@field public hasProp boolean # does this ped carry a prop
---@field public inVehicle boolean # is this ped in a vehicle?
---@field public isStanding boolean # is this ped standing?
---@field public maxHealth integer # max health as it can be altered
---@field public modelHash integer # model index
---@field public popType integer # population type
---@field public propHash integer # index of the prop the ped is carrying
---@field public randomSeed integer # random seed
---@field public seat integer # seat the ped is sitting in in the vehicle
---@field public vehicleID integer # ID of the vehicle this ped is currently in
---@field public voiceHash integer # voice hash code
---@field public wearingAHelmet boolean # is the ped wearing a helmet *put on via CPedHelmetComponent*
CPedCreationDataNode = {}

---@class CPedGameStateDataNode
---@field public HasValidWeaponClipset boolean # do we have a valid weapon clip set? Used as part of a hack fix for when pointing while holding a weapon
---@field public LookAtFlags integer # eHeadIkFlags
---@field public LookAtObjectID integer # If looking at an object, ID of object ped is looking at
---@field public arrestState integer # ped arrest state
---@field public bActionModeEnabled boolean
---@field public bDisableStartEngine boolean
---@field public bPedPerceptionModified boolean
---@field public bStealthModeEnabled boolean
---@field public bvehicleweaponindex boolean
---@field public canBeIncapacitated boolean
---@field public changeToAmbientPopTypeOnMigration boolean
---@field public cleardamagecount integer
---@field public createdByConcealedPlayer boolean
---@field public custodianID integer # ID of the player that is and has taken us into custody.
---@field public deathState integer # ped death state
---@field public disableBlindFiringInShotReactions boolean
---@field public doingWeaponSwap boolean # The ped is running a CTaskSwapWeapon
---@field public dontActivateRagdollFromAnyPedImpact boolean
---@field public dontBehaveLikeLaw boolean
---@field public equippedGadgets integer[] # hashes of gadgets equipped
---@field public flashLightOn boolean
---@field public hasCustodianOrArrestFlags boolean # does this ped have a custodian.
---@field public hasDroppedWeapon boolean
---@field public hasVehicle boolean # does this ped have a vehicle?
---@field public hitByTranqWeapon boolean
---@field public inVehicle boolean # is this ped in a vehicle?
---@field public isDuckingInVehicle boolean
---@field public isLookingAtObject boolean # Is looking at an object
---@field public isUpright boolean
---@field public isUsingAlternateLowriderLeanAnims boolean
---@field public isUsingLowriderLeanAnims boolean
---@field public keepTasksAfterCleanup boolean # ped keeps his tasks given when he was a script ped
---@field public killedByKnockdown boolean
---@field public killedByStandardMelee boolean
---@field public killedByStealth boolean
---@field public killedByTakedown boolean
---@field public mountID integer # ID of the mount this ped is currently in
---@field public nMovementModeOverrideID integer
---@field public numGadgets integer # the number of currently equipped gadgets
---@field public numWeaponComponents integer # the number of weapon components on current equipped weapon
---@field public onMount boolean # is this ped on a mount?
---@field public permanentlyDisablePotentialToBeWalkedIntoResponse boolean
---@field public seat integer # seat the ped is sitting in in the vehicle
---@field public vehicleID integer # ID of the vehicle this ped is currently in
---@field public vehicleweaponindex integer
---@field public weapon integer # currently selected weapon type
---@field public weaponComponents integer[] # hashes of weapon components equipped
---@field public weaponComponentsTint integer[]
---@field public weaponObjectAttachLeft boolean
---@field public weaponObjectExists boolean # is there a weapon object
---@field public weaponObjectHasAmmo boolean
---@field public weaponObjectTintIndex integer # weapon object tint index (coloured weapons)
---@field public weaponObjectVisible boolean # is the weapon object visible
CPedGameStateDataNode = {}

---@class CPedInventoryDataNode
---@field public allAmmoInfinite boolean
---@field public ammoInfinite boolean[]
---@field public ammoQuantity integer[]
---@field public ammoSlots integer[]
---@field public itemSlotNumComponents integer[]
---@field public itemSlotTint integer[]
---@field public itemSlots integer[]
---@field public numAmmos integer
---@field public numItems integer
CPedInventoryDataNode = {}

---@class CPedMovementDataNode
---@field public DesiredMoveBlendRatioX number # desired move blend ratio in the X axis
---@field public DesiredMoveBlendRatioY number # desired move blend ratio in the Y axis
---@field public DesiredPitch number # desired pitch
---@field public HasDesiredMoveBlendRatioX boolean # indicates whether the move blend ratio for the ped in the X axis is non-zero
---@field public HasDesiredMoveBlendRatioY boolean # indicates whether the move blend ratio for the ped in the Y axis is non-zero
---@field public HasStopped boolean # indicates the ped has stopped moving (velocity is zero)
---@field public MaxMoveBlendRatio number # script set max move blend ratio
CPedMovementDataNode = {}

---@class CPedOrientationDataNode
---@field public currentHeading number # ped current heading
---@field public desiredHeading number # ped desired heading
CPedOrientationDataNode = {}

---@class CPedScriptCreationDataNode
---@field public StayInCarWhenJacked boolean
CPedScriptCreationDataNode = {}

---@class CPedSectorPosMapNode---@field public IsRagdolling boolean
---@field public IsStandingOnNetworkObject boolean
---@field public LocalOffset V3
---@field public StandingOnNetworkObjectID integer
CPedSectorPosMapNode = {}

---@class CPhysicalAttachDataNode
---@field public InvMassScaleA number # inv mass scale A
---@field public InvMassScaleB number # inv mass scale B
---@field public IsCargoVehicle boolean # is the vehicle attached as a cargo vehicle
---@field public activatePhysicsWhenDetached boolean # activates the physics on the object when it is detached
---@field public allowInitialSeparation boolean # allowed initial separation
---@field public attached boolean # is this object attached?
---@field public attachedObjectID integer # object ID of the object attached to
---@field public attachmentFlags integer # attachment flags
---@field public attachmentMyBone integer # attachment bone
---@field public attachmentOffset V3 # attachment offset
---@field public attachmentOtherBone integer # attachment bone
---@field public attachmentParentOffset V3 # attachment parent offset
---@field public attachmentQuat V3 # attachment quaternion
---@field public syncPhysicsActivation boolean # if set m_activatePhysicsWhenDetached is synced
CPhysicalAttachDataNode = {}

---@class CPhysicalGameStateDataNode
---@field public allowCloningWhileInTutorial boolean # if set, the entity won't be stopped from cloning for players who are not in a tutorial
---@field public alphaType integer # the type of alpha ramp the entity is doing
---@field public alteringAlpha boolean # the entity is fading out / alpha ramping
---@field public customFadeDuration integer # A custom max duration for fading
---@field public fadingOut boolean # the entity is fading out
---@field public isInWater boolean # is in water game state flag
---@field public isVisible boolean # gamestate flag indicating whether the object is visible
---@field public renderScorched boolean # render scorched game state flag
CPhysicalGameStateDataNode = {}

---@class CPhysicalMigrationDataNode
---@field public isDead boolean # does this object have zero health?
CPhysicalMigrationDataNode = {}

---@class CPickupCreationDataNode
---@field public LODdistance integer # LOD distance of pickup
---@field public PlayersToBlockList integer # List of blocked players for this pickup
---@field public amount integer # the amount held in the pickup (only used for money pickups currently)
---@field public bHasPlacement boolean # set if the network object has a corresponding CPickup object
---@field public bHasPlayersBlockingList boolean # Are there any blocked players for this pickup
---@field public bPlayerGift boolean # set if this is an ambient pickup dropped for another player to collect
---@field public customModelHash integer # a custom model, if specified by script
---@field public includeProjectiles boolean # Allow projectiles to collide with this pickup
---@field public lifeTime integer # how long the pickup has existed (only used for ambient pickups)
---@field public numWeaponComponents integer
---@field public pickupHash integer # the type of the pickup
---@field public weaponComponents integer[] # for modded weapons dropped by players
---@field public weaponTintIndex integer # for modded weapons dropped by players
CPickupCreationDataNode = {}

---@class CPickupPlacementCreationDataNode
---@field public amount integer # a variable amount used by some pickup types (eg money).
---@field public customModelHash integer # a custom model, if specified by script
---@field public customRegenTime integer # a custom regeneration time, if specified by script
---@field public mapPlacement boolean # indicates whether this is a map placement or not
---@field public pickupHash integer # the hash of the pickup type
---@field public pickupOrientation V3 # the pickup orientation in eulers
---@field public pickupPosition V3 # the pickup position
---@field public placementFlags integer # the placement flags
---@field public teamPermits integer # which teams are allowed to collect this pickup
CPickupPlacementCreationDataNode = {}

---@class CPickupSectorPosNode---@field public SectorPosX number # X position of this object within the current sector
---@field public SectorPosY number # Y position of this object within the current sector
---@field public SectorPosZ number # Z position of this object within the current sector
CPickupSectorPosNode = {}

---@class CPlaneGameStateDataNode
---@field public AIIgnoresBrokenPartsForHandling boolean # if AI can fly plane well with damaged parts
---@field public AllowRollAndYawWhenCrashing boolean # When set, planes will spiral while crashing
---@field public BrokenSections integer # flags indicating which sections have broken off
---@field public ControlSectionsBreakOffFromExplosions boolean
---@field public DamagedSections integer # flags indicating which sections are damaged
---@field public EngineDamageScale number # damage scale for engine (overall)
---@field public HasCustomLandingGearSectionDamageScale boolean # Do we have custom damage scales for our landing gear sections?
---@field public HasCustomSectionDamageScale boolean # Do we have custom damage scales for our sections?
---@field public IndividualPropellerFlags integer # flags indicating state of individual propellers
---@field public LODdistance integer # LOD distance of pickup
---@field public LandingGearPublicState integer # Landing Gear Public State
---@field public LandingGearSectionDamageScale number[] # damage scale for each plane section
---@field public LockOnState integer # Lockon state (none, acquiring, acquired)
---@field public LockOnTarget integer # ID of network object this plane is locked-on to
---@field public RotorBroken integer # flags indicating which rotors are broken off
---@field public SectionDamage number[] # damage fraction values for each plane section
---@field public SectionDamageScale number[] # damage scale for each plane section
---@field public dipStraightDownWhenCrashing boolean
---@field public disableExlodeFromBodyDamageOnCollision boolean
---@field public disableExpFromBodyDamage boolean # Does this plane take damage from body impacts?
CPlaneGameStateDataNode = {}

---@class CPlayerAmbientModelStreamingNode---@field public AllowedPedModelStartOffset integer
---@field public AllowedVehicleModelStartOffset integer
---@field public TargetVehicleEntryPoint integer
---@field public TargetVehicleForAnimStreaming integer
CPlayerAmbientModelStreamingNode = {}

---@class CPlayerAppearanceDataNode
---@field public HasDecorations boolean # number of decorations (medals/tattoos)
---@field public HasHeadBlendData boolean # does this player have custom head data?
---@field public HasRespawnObjId boolean # has a valid respawn object id
---@field public NewModelHash integer # model index for player
---@field public PackedDecorations integer[] # texture preset hashes (looked up from collection)
---@field public RespawnNetObjId integer # ID of the ped used for Team Swapping
---@field public VoiceHash integer # voice hash code
---@field public crewEmblemVariation integer
---@field public crewLogoTexHash integer
---@field public crewLogoTxdHash integer
---@field public facialClipSetId integer # the facial clipset used by the player
---@field public facialIdleAnimOverrideClipDictNameHash integer # the dictionary used by the player
---@field public facialIdleAnimOverrideClipNameHash integer # the facial clip used by the player
---@field public helmetProp integer # which helmet prop are we using?
---@field public helmetTextureId integer # which helmet are we about to put on?
---@field public isAttachingHelmet boolean # are we attaching a helmet via TaskMotionInAutomobile::State_PutOnHelmet
---@field public isRemovingHelmet boolean # are we playing secondary priority removing helmet anim?
---@field public isVisorSwitching boolean
---@field public isWearingHelmet boolean # are we wearing a helmet (needed for when we aborting putting one on)
---@field public networkedDamagePack integer
---@field public parachutePackTintIndex integer # Colour of the players' parachute pack
---@field public parachuteTintIndex integer # Colour of the players' parachute
---@field public phoneMode integer
---@field public supportsVisor boolean
---@field public targetVisorState integer
---@field public visorIsUp boolean
---@field public visorPropDown integer # which helmet prop are we using?
---@field public visorPropUp integer # which helmet prop are we using?
CPlayerAppearanceDataNode = {}

---@class CPlayerCameraDataNode
---@field public LookAtPosition V3
---@field public Position V3 # the position offset of the camera if aiming - or absolute position if using a free camera
---@field public UsingCinematicVehCamera boolean # if set, this player is using the cinematic vehicle camera
---@field public UsingFreeCamera boolean # if set, this player is controlling a free camera
---@field public UsingLeftTriggerAimMode boolean # is this player using the left trigger aim camera mode
---@field public aiming boolean # if the player is currently aiming a weapon
---@field public bAimTargetEntity boolean
---@field public canOwnerMoveWhileAiming boolean # can the owner move while aiming (changes based on aiming from hip / scope / weapon)
---@field public eulersX number # camera matrix euler angles
---@field public eulersZ number # camera matrix euler angles
---@field public freeAimLockedOnTarget boolean # if the player is free aim locked onto a target...
---@field public inFirstPersonIdle boolean
---@field public isLooking boolean
---@field public largeOffset boolean # if set, the camera is far away from the player
---@field public lockOnTargetOffset V3 # if locked onto a target, offset from target position to actual lock on pos.
---@field public longRange boolean # if the player is aiming a long range weapon (sniper rifle - 1500m range) or short range (<150m)
---@field public morePrecision boolean # if set, more precise camera data is used
---@field public onSlope boolean
---@field public playerToTargetAimOffset V3 # position we're aiming at (used to compute pitch and yaw on the clone).
---@field public stickWithinStrafeAngle boolean
---@field public targetId integer # if we're aiming at a target we pass that info instead of pitch and yaw.
---@field public usingFirstPersonCamera boolean
---@field public usingFirstPersonVehicleCamera boolean
---@field public usingSwimMotionTask boolean
CPlayerCameraDataNode = {}

---@class CPlayerCreationDataNode
---@field public ModelHash integer
---@field public NumBloodMarks integer
---@field public NumScars integer
---@field public hasCommunicationPrivileges boolean
---@field public wearingAHelmet boolean # only want to apply this once and then it's derived locally...
CPlayerCreationDataNode = {}

---@class CPlayerGameStateDataNode
---@field public AirDragMult number # air drag multiplier
---@field public AntagonisticPlayerIndex integer # Antagonistic player index
---@field public ConcealedOnOwner boolean # true when local player concealed themselves
---@field public EnableCrewEmblem boolean # Does the ped use the crew emblem?
---@field public FadeOut boolean
---@field public GameStateFlags PlayerGameStateFlags # game state flags
---@field public GarageInstanceIndex integer
---@field public IsTargettableByTeam integer # flags indicating whether the ped is targettable by each team //
---@field public JackSpeed integer # jack speed percentage for the player
---@field public LockOnState integer
---@field public LockOnTargetID integer # for when players use homing launchers
---@field public MaxArmour integer # max armour for the player
---@field public MaxHealth integer # max health for the player
---@field public MeleeDamageModifier number
---@field public MeleeUnarmedDamageModifier number
---@field public MobileRingState integer # mobile phone ring state for the player
---@field public OverrideReceiveChat integer # Override Receive Chat
---@field public OverrideSendChat integer # Override Send Chat //
---@field public PlayerState integer # the current player state
---@field public PlayerTeam integer # current player team
---@field public ScriptedWeaponFirePos V3
---@field public SpectatorId integer # Network Object of the ped we are spectating
---@field public TutorialIndex integer # Tutorial session index - used to split players into fake sessions including only team-mates
---@field public TutorialInstanceID integer # Current tutorial instance ID (only used for gang sessions)
---@field public VehicleJumpDown boolean
---@field public VehicleShareMultiplier number
---@field public WeaponDamageModifier number
---@field public WeaponDefenseModifier number
---@field public WeaponMinigunDefenseModifier number
---@field public arcadeCNCVOffender boolean
---@field public arcadePassiveAbilityFlags integer
---@field public arcadeRoleInt integer
---@field public arcadeTeamInt integer
---@field public bBattleAware boolean
---@field public bCollisionsDisabledByScript boolean # used for spectating players, that have other collision flags set
---@field public bDisableLeavePedBehind boolean # Disable Leave ped behind when the remote player leaves the session.
---@field public bGhost boolean
---@field public bHasScriptedWeaponFirePos boolean
---@field public bHasVoiceProximityOverride boolean # If we have a voice proximity override
---@field public bInCutscene boolean # player is in a mocap cutscene
---@field public bIsChokingFromDOTEffect boolean
---@field public bIsFriendlyFireAllowed boolean
---@field public bIsPassiveMode boolean
---@field public bIsSCTVSpectating boolean # true when player is SCTV spectator
---@field public bIsShockedFromDOTEffect boolean
---@field public bIsSuperJump boolean
---@field public bOverrideTransitionChat boolean # Override Transition Chat
---@field public bOverrideTutorialChat boolean # Override Tutorial Chat
---@field public bUseExtendedPopulationRange boolean
---@field public bvehicleweaponindex boolean # Indicator whether the VWI is sent
---@field public decoratorListCount integer # count of decorator extensions ( the scripted ones )
---@field public fVoiceLoudness number # Loudness of player voice through microphone
---@field public nCharacterRank integer
---@field public nMentalState integer
---@field public nPedDensity integer
---@field public nPropertyID integer
---@field public nVoiceChannel integer # Voice channel this player is in
---@field public sizeOfNetArrayData integer # the total size of all the network array handler data arbitrated by this player
---@field public vExtendedPopulationRangeCenter V3
---@field public vVoiceProximityOverride V3 # Proximity override
---@field public vehicleweaponindex integer # Vehicle Weapon Index: Missiles, Gatling, etc...
CPlayerGameStateDataNode = {}

---@class CPlayerSectorPosNode---@field public IsOnStairs boolean # is this player standing on stairs?
---@field public IsRagdolling boolean # is this player ragdolling?
---@field public IsStandingOnNetworkObject boolean # is this player currently standing on another network object?
---@field public LocalOffset V3 # Offset from the center of the object
---@field public PackedStealthNoise integer # the serialised players current stealth noise
---@field public SectorPosX number # X position of this object within the current sector
---@field public SectorPosY number # Y position of this object within the current sector
---@field public SectorPosZ number # Z position of this object within the current sector
---@field public StandingOnNetworkObjectID integer # ID of the object this player is standing on
---@field public StealthNoise number # the players current stealth noise
CPlayerSectorPosNode = {}

---@class CSectorDataNode
---@field public sectorX integer # X sector this object is currently within
---@field public sectorY integer # Y sector this object is currently within
---@field public sectorZ integer # Z sector this object is currently within
CSectorDataNode = {}

---@class CSectorPositionDataNode
---@field public sectorPosX number # X position of this object within the current sector
---@field public sectorPosY number # Y position of this object within the current sector
---@field public sectorPosZ number # Z position of this object within the current sector
CSectorPositionDataNode = {}

---@class CSubmarineGameStateDataNode
---@field public IsAnchored boolean # is this submarine anchored?
CSubmarineGameStateDataNode = {}

---@class CTrainGameStateDataNode
---@field public AllowRemovalByPopulation boolean # used by stationary trains in missions
---@field public CarriageConfigIndex integer # Config index of the carriage
---@field public CruiseSpeed number # the target cruise speed of the train (desired speed)
---@field public Direction boolean # Direction traveling on track
---@field public DistFromEngine number # the distance of this carriage from the engine (0.0 if this is an engine)
---@field public EngineID integer # ID of the engine this carriage is attached to (if this train is not an engine)
---@field public HasPassengerCarriages boolean # Does this train have any passenger carriages?
---@field public IsCaboose boolean # Is this a caboose
---@field public IsEngine boolean # is this train an engine or carriage?
---@field public IsMissionTrain boolean # Is this a mission created train?
---@field public LinkedToBackwardID integer # ID of the car linked backward from this train car
---@field public LinkedToForwardID integer # ID of the car linked forward from this train car
---@field public RenderDerailed boolean # Should this train be rendered as derailed?
---@field public StopForStations boolean # Stop for stations
---@field public TrackID integer # the track the train is on
---@field public TrainConfigIndex integer # Config index of the entire train this carriage/engine is a part of
---@field public TrainState integer # the train state
---@field public UseHighPrecisionBlending boolean # are we using high precision blending on the train
---@field public doorsForcedOpen boolean # force the doors open
CTrainGameStateDataNode = {}

---@class CVehicleAppearanceDataNode
---@field public LicencePlateTexIndex integer # Licence plate texture index.
---@field public VehicleBadge boolean
---@field public allKitMods integer[]
---@field public bSmokeColor boolean # has a smoke color
---@field public bVehicleBadgeData boolean[]
---@field public bWindowTint boolean # has a window tint
---@field public bodyColour1 integer # vehicle body colour 1
---@field public bodyColour2 integer # vehicle body colour 2
---@field public bodyColour3 integer # vehicle body colour 3
---@field public bodyColour4 integer # vehicle body colour 4
---@field public bodyColour5 integer # vehicle body colour 5
---@field public bodyColour6 integer # vehicle body colour 6
---@field public bodyDirtLevel integer # vehicle body dirt level
---@field public customPrimaryB integer # custom secondary color B
---@field public customPrimaryColor boolean
---@field public customPrimaryG integer # custom secondary color G
---@field public customPrimaryR integer # custom secondary color R
---@field public customSecondaryB integer # custom secondary color B
---@field public customSecondaryColor boolean
---@field public customSecondaryG integer # custom secondary color G
---@field public customSecondaryR integer # custom secondary color R
---@field public disableExtras integer # bit flags indicating which "extra" car parts are disabled
---@field public envEffScale integer
---@field public hasDifferentRearWheel boolean # has a rear wheel that might have a different type (bikes)
---@field public hasLivery2ID boolean
---@field public hasLiveryID boolean
---@field public horntype integer
---@field public kitIndex integer # the kit index that the variation data is using
---@field public licencePlate integer[] # Licence Plate
---@field public livery2ID integer # ID of the livery2 for the vehicle
---@field public liveryID integer # ID of the livery for the vehicle
---@field public neonBOn boolean
---@field public neonColorB integer # neon color B
---@field public neonColorG integer # neon color G
---@field public neonColorR integer # neon color R
---@field public neonFOn boolean
---@field public neonLOn boolean
---@field public neonOn boolean
---@field public neonROn boolean
---@field public neonSuppressed boolean
---@field public rearWheelMod integer # rear wheel mod value (for bikes)
---@field public smokeColorB integer # smoke color B
---@field public smokeColorG integer # smoke color G
---@field public smokeColorR integer # smoke color R
---@field public toggleMods integer # bitfield of the toggle mods that are switched on
---@field public wheelMod integer # wheel mod value
---@field public wheelType integer # wheel type value
---@field public wheelVariation0 boolean
---@field public wheelVariation1 boolean
---@field public windowTint integer # window tint
CVehicleAppearanceDataNode = {}

---@class CVehicleControlDataNode
---@field public BVTHControlVertVel boolean # CTaskBringVehicleToHalt bControlVerticalVelocity
---@field public BVTHStoppingDist number # CTaskBringVehicleToHalt stopping dist
---@field public HasTargetGravityScale boolean # For hover vehicles
---@field public HasTopSpeedPercentage boolean
---@field public StickY number
---@field public SubCarDive number # the current value of the dive control for sub cars
---@field public SubCarPitch number # the current value of the pitch control for sub cars
---@field public TargetGravityScale number
---@field public bAllLowriderHydraulicsRaised boolean # CTaskVehiclePlayerDriveAutomobile::ProcessDriverInputsForPlayerOnUpdate; player has raised all lowrider suspension
---@field public bIsClosingAnyDoor boolean
---@field public bIsNitrousOverrideActive boolean
---@field public bModifiedLowriderSuspension boolean # CTaskVehiclePlayerDriveAutomobile::ProcessDriverInputsForPlayerOnUpdate; player has modified suspension of lowrider
---@field public bNitrousActive boolean
---@field public bPlayHydraulicsActivationSound boolean # Hydraulics sound effect when activated
---@field public bPlayHydraulicsBounceSound boolean # Hydraulics sound effect when bouncing
---@field public bPlayHydraulicsDeactivationSound boolean # Hydraulics sound effect when de-activated
---@field public brakePedal number # the current value of the brake pedal
---@field public bringVehicleToHalt boolean # CTaskBringVehicleToHalt is running as a secondary task
---@field public fLowriderSuspension number[] # Syncs modified lowrider suspension values
---@field public isInBurnout boolean
---@field public isSubCar boolean
---@field public kersActive boolean # indicates if the kers system is active
---@field public numWheels integer # number of wheels on this car
---@field public reducedSuspensionForce boolean # reduced suspension force used to "stance" tuner pack vehicles
---@field public roadNodeAddress integer # the current road node the vehicle is driving from
---@field public subCarYaw number # the current value of the yaw control for sub cars
---@field public throttle number # the current value of the throttle
---@field public topSpeedPercent number # set to the maximum speed a vehicle can travel at
CVehicleControlDataNode = {}

---@class CVehicleCreationDataNode
---@field public lastDriverTime integer # the last time this vehicle had a driver
---@field public maxHealth integer # max health as it can be altered
---@field public modelHash integer # vehicle model index
---@field public needsToBeHotwired boolean # does the car need to be hotwired?
---@field public popType integer # population type
---@field public randomSeed integer # random seed
---@field public status integer # vehicle status flags
---@field public takeOutOfParkedCarBudget boolean # should this vehicle be taken out of the parked car population budget?
---@field public tyresDontBurst boolean # are the tyres impervious to damage?
---@field public usesVerticalFlightMode boolean # true when it's a plane and uses special flight mode
CVehicleCreationDataNode = {}

---@class CVehicleGameStateDataNode
---@field public AICanUseExclusiveSeats boolean # AI can use driver seat even if marked exclusive
---@field public DontTryToEnterThisVehicleIfLockedForPlayer boolean # should players attempt to enter vehicle if its locked for them?
---@field public ExtraBrokenFlags integer
---@field public HeadlightMultiplier number
---@field public OverridenVehHornHash integer # Hash of a horn sound used for overriden vehicle horn
---@field public OverridingVehHorn boolean # Is vehicle horn has been overriden
---@field public PlayerLocks integer
---@field public RemoveAggressivelyForCarjackingMission boolean # Allows the vehicle to be removed aggressively during the car jacking missions
---@field public UnFreezeWhenCleaningUp boolean # Vehicle flag set by script but can't be synced in script node because it would reset
---@field public alarmActivated boolean # is the alarm activated
---@field public alarmSet boolean # is the alarm set?
---@field public canEjectPassengersIfLocked boolean
---@field public checkForEnoughRoomToFitPed boolean
---@field public customPathNodeStreamingRadius number
---@field public detachedTombStone boolean
---@field public disableSuperDummy boolean
---@field public doorIndividualLockedState integer[]
---@field public doorIndividualLockedStateFilter integer
---@field public doorLockState integer # door lock state
---@field public doorsBroken integer # doors broken state
---@field public doorsNotAllowedToBeBrokenOff integer # if the doors are not allowed to be broken off bitmask
---@field public doorsOpen integer # doors open state
---@field public doorsOpenRatio integer[] # doors open ratio
---@field public downforceModifierFront number
---@field public downforceModifierRear number
---@field public driftTyres boolean
---@field public engineOn boolean # is this vehicle's engine currently on?
---@field public engineSkipEngineStartup boolean # if the audio for the engine startup should be skipped
---@field public engineStarting boolean # is the engine starting
---@field public exclusiveDriverPedID integer[] # exclusive driver (only peds that can drive this vehicle).
---@field public flaggedForCleanup boolean # flagged for cleanup
---@field public forceOtherVehsToStop boolean # should other vehicles be forced to stop for this one
---@field public fullThrottleActive boolean # Is the Full Throttle effect being applied to this vehicle
---@field public fullThrottleEndTime integer # Network time that Full Throttle will end
---@field public ghost boolean
---@field public handBrakeOn boolean # indicates whether the hand brake is on
---@field public hasBeenOwnedByPlayer boolean
---@field public hasLastDriver boolean
---@field public hasTimedExplosion boolean # is there a timed explosive on this vehicle
---@field public headlightsFullBeamOn boolean # headlights full beam on
---@field public influenceWantedLevel boolean
---@field public isDriveable boolean # is this vehicle drivable?
---@field public isParked boolean # is this a parked car
---@field public isStationary boolean # is this a stationary car
---@field public isTrailerAttachmentEnabled boolean # Script can disable trailers from attaching themselves
---@field public junctionArrivalTime integer # Time that the vehicle arrived at its current junction
---@field public junctionCommand integer # Traffic flow command (stop, go)
---@field public lastDriverPedID integer
---@field public lightsOn boolean # lights on
---@field public mercVeh boolean
---@field public moveAwayFromPlayer boolean # should this veh move away from the player
---@field public noDamageFromExplosionsOwnedByDriver boolean
---@field public overridelights integer
---@field public placeOnRoadQueued boolean
---@field public planeResistToExplosion boolean
---@field public pretendOccupants boolean # does this vehicle have pretend occupants
---@field public radioStation integer # current radio station
---@field public radioStationChangedByDriver boolean # driver changed current radio station
---@field public removeWithEmptyCopOrWreckedVehs boolean # consider this veh with cop/wrecked vehs for removal purposes
---@field public roofLowered boolean # set when a convertible has the roof open
---@field public runningRespotTimer boolean # is this vehicle running the car respot timer
---@field public scriptSetHandbrakeOn boolean # indicates whether script has specified the handbrake is on this vehicle (included in vehicle game state to ensure goes with handbrake state)
---@field public sirenOn boolean # is this vehicle's siren currently on?
---@field public timedExplosionCulprit integer # entity responsible for the timed explosion
---@field public timedExplosionTime integer # network time at which the timed explosion is to occur
---@field public usePlayerLightSettings boolean
---@field public useRespotEffect boolean
---@field public vehicleOccupantsTakeExplosiveDamage boolean
---@field public windowsDown integer # windows down state
---@field public xenonLightColor integer
CVehicleGameStateDataNode = {}

---@class CVehicleHealthDataNode
---@field public bodyhealth integer # body health
---@field public extinguishedFireCount integer
---@field public fixedCount integer # counter that is sync'd to trigger remote fix of vehicle when local fix of vehicle happens
---@field public hasDamageEntity boolean # has this vehicle been damaged by another entity?
---@field public hasMaxHealth boolean # health is max
---@field public health integer # health
---@field public healthsame boolean # if the health is the same as body health
---@field public isBlownUp boolean # was the vehicle wrecked by explosion?
---@field public isWrecked boolean # is this vehicle wrecked?
---@field public lastDamagedMaterialId integer # last material id that was damaged for vehicle
---@field public numWheels integer # number of wheels on this car
---@field public packedEngineHealth integer # packed engine health value
---@field public packedPetrolTankHealth integer # packed petrol tank health value
---@field public suspensionHealth number[] # the health of the suspension for the wheels
---@field public suspensionHealthDefault boolean # is the suspension health for all wheels at the default
---@field public tyreBrokenOff boolean[]
---@field public tyreDamaged boolean[] # indicates which tyres are damaged
---@field public tyreDestroyed boolean[] # indicates which tyres are destroyed
---@field public tyreFire boolean[]
---@field public tyreHealthDefault boolean # is the tyre health for all wheels at the default
---@field public tyreWearRate number[]
---@field public weaponDamageEntity integer # weapon damage entity (only for script objects???????????????)
---@field public weaponDamageHash integer # weapon damage Hash
CVehicleHealthDataNode = {}

---@class CVehicleProximityMigrationDataNode
---@field public PopType integer # population type 0x00F8
---@field public RespotCounter integer # remaining time from respotting 0x0130
---@field public SpeedMultiplier number # speed multiplier (used when calculating cruise speeds) 0x012C
---@field public hasOccupant boolean[] # does this vehicle have passengers? 0x00C4
---@field public hasPopType boolean # has a population type 0x00F4
---@field public hasTaskData boolean # does the vehicle have any task data to sync 0x0132
---@field public isMoving boolean # is the vehicle moving (if not pos and vel not sent) 0x0104
---@field public lastDriverTime integer # the last time this vehicle had a driver 0x0100
---@field public maxOccupants integer # maximum number of passengers for this vehicle 0x00C0
---@field public occupantID integer[] # IDs of the passengers 0x00D4
---@field public packedVelocityX integer # current velocity X (packed) 0x120
---@field public packedVelocityY integer # current velocity Y (packed) 0x124
---@field public packedVelocityZ integer # current velocity Z (packed) 0x128
---@field public position V3 # current vehicle position 0x110
---@field public status integer # vehicle status flags 0x00FC
---@field public taskMigrationData integer[] # the migration data of the current AI task 0x013C
---@field public taskMigrationDataSize integer # the size of the migration data for the current AI task 0x0138
---@field public taskType integer # the current AI task type 0x0134
CVehicleProximityMigrationDataNode = {}

---@class CVehicleTaskDataNode
---@field public taskData integer[]
---@field public taskDataSize integer
---@field public taskType integer
CVehicleTaskDataNode = {}

---@class PlayerGameStateFlags---@field public PRF_BlockRemotePlayerRecording boolean
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

---@enum eSyncDataNode
eSyncDataNode =
{
    CVehicleGameStateDataNode = -3327179917638037453,
    CBoatGameStateDataNode = -9163678683428259062,
    CPlayerAmbientModelStreamingNode = -1262657217393524803,
    CVehicleGadgetDataNode = 467091292702059588,
    CPlayerGameStateDataNode = -4656243067172536933,
    CEntityOrientationDataNode = 9209420611532113089,
    CVehicleScriptGameStateDataNode = 1909093387792567410,
    CPlayerCameraDataNode = -8777312774682338835,
    CPedOrientationDataNode = -5392089341392112441,
    CPhysicalHealthDataNode = -1867382375032189118,
    CPickupPlacementStateDataNode = -3531716527572024603,
    CDoorScriptInfoDataNode = 4381239728731408299,
    CVehicleDamageStatusDataNode = 5604219613491726154,
    CVehicleAppearanceDataNode = 2446824136736411778,
    CPedMovementDataNode = -1559831437258684604,
    CPlayerCreationDataNode = 8570162245514484061,
    CPedSectorPosNavMeshNode = -6223332282331191660,
    CPedAppearanceDataNode = 2275064106146948273,
    CPhysicalScriptGameStateDataNode = -5880091134592188929,
    CPlayerExtendedGameStateNode = 2803335738927412009,
    CSectorPositionDataNode = -3824838344051002039,
    CPhysicalAngVelocityDataNode = 449637651761148433,
    CPedTaskSpecificDataNode = -472405422521561261,
    CSubmarineGameStateDataNode = -1278459264081213457,
    CTrainGameStateDataNode = -922304054679815950,
    CPedHealthDataNode = 5494935925195851321,
    CPlaneGameStateDataNode = -3207477573494262229,
    CSectorDataNode = 4049682525933715209,
    CEntityScriptGameStateDataNode = -3321396366949439193,
    CPlayerPedGroupDataNode = 6396278374041525629,
    CVehicleComponentReservationDataNode = 3273357527049782710,
    CEntityScriptInfoDataNode = 5501409603415454348,
    CVehicleSteeringDataNode = -7681442130791573283,
    CPlayerSectorPosNode = 6621624132831582469,
    CPedAttachDataNode = -3197278861141224902,
    CObjectSectorPosNode = -8377853373502357687,
    CDoorMovementDataNode = 807765650430333775,
    CPickupScriptGameStateNode = 1218595623978173907,
    CObjectScriptGameStateDataNode = 5439752859618573386,
    CDoorScriptGameStateDataNode = -5410680991188395522,
    CPlayerAppearanceDataNode = 3093548782381335807,
    CPlaneControlDataNode = -4948698852851294319,
    CPedTaskSequenceDataNode = 4892896272100637543,
    CPedTaskTreeDataNode = 8822712277062939176,
    CHeliHealthDataNode = -6322236843480366682,
    CVehicleAngVelocityDataNode = 4353383233771262641,
    CVehicleControlDataNode = -7668635803903012766,
    CPedScriptCreationDataNode = -1059182043506812602,
    CPhysicalMigrationDataNode = -1066936718293166456,
    CPickupSectorPosNode = 3172599622288496662,
    CPickupCreationDataNode = -1145589329101458704,
    CObjectGameStateDataNode = 5319460279012202364,
    CPedCreationDataNode = 193313267506037482,
    CPedMovementGroupDataNode = -8964098868335733649,
    CBikeGameStateDataNode = -6592745043405278378,
    CVehicleCreationDataNode = -2690163201605007719,
    CPedSectorPosMapNode = 4781603739955214873,
    CHeliControlDataNode = -2933589451112766372,
    CVehicleHealthDataNode = -3240843251615673313,
    CObjectCreationDataNode = -4331200343593982556,
    CPedInventoryDataNode = -3245761823282766500,
    CDynamicEntityGameStateDataNode = 3510997700422771605,
    CObjectOrientationNode = -4276229952258566334,
    CPedScriptGameStateDataNode = -4371312310486394754,
    CPhysicalAttachDataNode = 1039065826991701247,
    CVehicleProximityMigrationDataNode = -5670424608501187627,
    CPlayerWantedAndLOSDataNode = 7622806965071702653,
    CPhysicalScriptMigrationDataNode = -6204451150241065127,
    CPickupPlacementCreationDataNode = -701192001929508658,
    CPhysicalVelocityDataNode = -7788006530499528526,
    CVehicleTaskDataNode = -2647487383975098761,
    CPedAIDataNode = 8679540341254472825,
    CSubmarineControlDataNode = 8666139107031300245,
    CGlobalFlagsDataNode = 8032902634871186270,
    CPedComponentReservationDataNode = 6738931265065028827,
    CPedGameStateDataNode = 5170080458249895734,
    CPhysicalGameStateDataNode = 5184833448198397514,
    CPlayerGamerDataNode = 5740398756052011828,
    CDoorCreationDataNode = 6005073372661696113,
    CAutomobileCreationDataNode = 5904393404341586450,
    CMigrationDataNode = 6021269530255844142,
}
