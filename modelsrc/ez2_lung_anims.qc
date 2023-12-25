
$modelname "lung_anims.mdl"

// Must be included
$include "vortikchains.qci"
$include "vortbones.qci"

//$include "vortigaunt_anims_DeclareSequence.qci"

$sequence "ragdoll" "vortigaunt_slave_anims/ragdoll.smd" {
	activity "ACT_DIERAGDOLL" 1
	cmdlist lockfeet
}

//===================================================================================================

$weightlist "upper_worldspaceblend" {
	"ValveBiped.hips" 0.1
	"ValveBiped.leg_bone1_L" 0
	"ValveBiped.leg_bone1_R" 0
	"ValveBiped.spine1" 0.1
	"ValveBiped.spine2" 0.2
	"ValveBiped.spine3" 0.3
	"ValveBiped.spine4" 0.4
	"ValveBiped.clavical_L" 0.5
	"ValveBiped.clavical_R" 0.5
	"ValveBiped.arm1_L" 0.6
	"ValveBiped.arm1_R" 0.6
}

//===================================================================================================

$animation "a_Idle03_layer" "vortigaunt_anims_hl2\Idle01.smd" frame 0 0

$sequence "idle_lung_layer" "ez2_lung_anims\Idle01_lung_layer.smd" {
	frame 0 0
	subtract "a_Idle03_layer" 0
	delta
	hidden
}

$sequence "Idle03" "vortigaunt_anims_hl2\Idle01.smd" activity "ACT_IDLE_HURT" 1 addlayer "idle_lung_layer"

//===================================================================================================

$animation "a_Idle01_layer" "vortigaunt_anims_ep2\Idle01.smd" frame 0 0

$sequence "idle_lung_layer_ep2" "ez2_lung_anims\Idle01_lung_layer_ep2.smd" {
	frame 0 0
	subtract "a_Idle01_layer" 0
	delta
	hidden
}

$sequence "Idle01" "vortigaunt_anims_ep2\Idle01.smd" activity "ACT_IDLE" 1 addlayer "idle_lung_layer_ep2"

//===================================================================================================

$animation "a_runN" "ez2_lung_anims\a_lung_runN.smd" {
	//ikrule "lfoot" footstep contact 7 fakeorigin 12.83 6.79 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 5 12 17 target 3
	//ikrule "rfoot" footstep contact 16 fakeorigin 12.83 -4.42 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 10 15 5 10 target 2
	loop
	walkframe 18 LX LY
}

$animation "a_runNE" "vortigaunt_anims_ep2\a_runNE.smd" {
	//ikrule "lfoot" footstep contact 6 fakeorigin 4.89 -9.32 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 16 5 9 16 target 3
	//ikrule "rfoot" footstep contact 16 fakeorigin 3.1 -15.45 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 7 15 18 7 target 2
	loop
	walkframe 18 LX LY
}

$animation "a_runE" "vortigaunt_anims_ep2\a_runE.smd" {
	//ikrule "lfoot" footstep contact 7 fakeorigin 6.61 0.98 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 16 6 9 16 target 3
	//ikrule "rfoot" footstep contact 16 fakeorigin -7.52 -13.96 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 7 15 18 7 target 2
	loop
	walkframe 18 LX LY
}

$animation "a_runSE" "vortigaunt_anims_ep2\a_runSE.smd" {
	//ikrule "lfoot" footstep contact 8 fakeorigin -11.72 3.76 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 5 12 17 target 3
	//ikrule "rfoot" footstep contact 17 fakeorigin -5.72 -11.32 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 8 14 3 8 target 2
	loop
	walkframe 18 LX LY
}

$animation "a_runS" "vortigaunt_anims_ep2\a_runS.smd" {
	//ikrule "lfoot" footstep contact 7 fakeorigin -17.17 7.23 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 16 3 12 16 target 3
	//ikrule "rfoot" footstep contact 16 fakeorigin -25.17 -4.24 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 7 11 3 7 target 2
	loop
	walkframe 18 LX LY
}

$animation "a_runSW" "vortigaunt_anims_ep2\a_runSW.smd" {
	//ikrule "lfoot" footstep contact 6 fakeorigin -5.72 11.22 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 15 3 10 15 target 3
	//ikrule "rfoot" footstep contact 15 fakeorigin -11.72 3.88 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 6 11 2 6 target 2
	loop
	walkframe 18 LX LY
}

$animation "a_runW" "vortigaunt_anims_ep2\a_runW.smd" {
	//ikrule "lfoot" footstep contact 9 fakeorigin -7.52 10.08 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 5 12 17 target 3
	//ikrule "rfoot" footstep contact 17 fakeorigin 6.61 -1.08 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 8 14 3 8 target 2
	loop
	walkframe 18 LX LY
}

$animation "a_runNW" "vortigaunt_anims_ep2\a_runNW.smd" {
	//ikrule "lfoot" footstep contact 8 fakeorigin -5.28 8.27 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 6 10 17 target 3
	//ikrule "rfoot" footstep contact 16 fakeorigin -3.15 1.67 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 8 16 18 8 target 2
	loop
	walkframe 18 LX LY
}

$sequence "Run_all" {
	"a_runS"
	"a_runSE"
	"a_runE"
	"a_runNE"
	"a_runN"
	"a_runNW"
	"a_runW"
	"a_runSW"
	"a_runS"
	activity "ACT_Run" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 3 "NPC_Lung" }
	{ event 6005 15 "NPC_Lung" }
	fadein 0.2
	fadeout 0.2
}

//===================================================================================================

$animation "a_walkN" "ez2_lung_anims\a_lung_walkN.smd" {
	fps 25
	loop
	ikrule "lfoot" footstep contact 10 fakeorigin 10.54 7.91 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 1 7 25 1 target 3
	ikrule "rfoot" footstep contact 25 fakeorigin 10.53 -3.64 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 16 22 11 16 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1
	walkframe 33 LX LY
}

$animation "a_WalkNE" "vortigaunt_anims_ep2\a_WalkNE.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 9 fakeorigin -1.68 -3.82 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 32 6 25 32 target 3
	ikrule "rfoot" footstep contact 27 fakeorigin -3.77 -10.1 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 22 11 17 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1
	walkframe 33 LX LY
}

$animation "a_WalkE" "vortigaunt_anims_ep2\a_WalkE.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 10 fakeorigin -1.29 0.64 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 0 7 25 33 target 3
	ikrule "rfoot" footstep contact 25 fakeorigin -16.88 -13.94 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 22 11 17 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1
	walkframe 33 LX LY
}

$animation "a_WalkSE" "vortigaunt_anims_ep2\a_WalkSE.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 10 fakeorigin -11.74 4.91 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 0 7 25 33 target 3
	ikrule "rfoot" footstep contact 25 fakeorigin -13.59 -13.56 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 22 11 17 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1
	walkframe 33 LX LY
}

$animation "a_WalkS" "vortigaunt_anims_ep2\a_WalkS.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 10 fakeorigin -13.01 9.8 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 0 7 25 33 target 3
	ikrule "rfoot" footstep contact 25 fakeorigin -12.31 -9.04 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 22 11 17 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1
	walkframe 33 LX LY
}

$animation "a_WalkSW" "vortigaunt_anims_ep2\a_WalkSW.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 10 fakeorigin -11.92 15.89 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 0 7 25 33 target 3
	ikrule "rfoot" footstep contact 25 fakeorigin -16.55 -5.98 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 22 11 17 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1
	walkframe 33 LX LY
}

$animation "a_WalkW" "vortigaunt_anims_ep2\a_WalkW.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 10 fakeorigin -1.99 22.14 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 0 7 25 33 target 3
	ikrule "rfoot" footstep contact 25 fakeorigin -13.26 -7.42 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 22 11 17 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1
	walkframe 33 LX LY
}

$animation "a_WalkNW" "vortigaunt_anims_ep2\a_WalkNW.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 9 fakeorigin -3.93 14.35 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 32 5 25 32 target 3
	ikrule "rfoot" footstep contact 25 fakeorigin 6.01 -4.49 0 fakerotate 0 0 0 floor 0 height 18 radius 4 range 17 22 11 17 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1
	walkframe 33 LX LY
}

//===================================================================================================

$sequence "Walk_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_walkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 15 "NPC_Lung" }
	{ event 6005 32 "NPC_Lung" }
	fadein 0.2
	fadeout 0.2
}

//===================================================================================================

$sequence "cautious_layer" "vortigaunt_anims_ep2\jump_down128.smd" {
	frame 20 20
	weightlist "upper_worldspaceblend"
	worldspace
	hidden
}

$sequence "Walk_cautious_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_walkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	//activity "ACT_WALK" 1
	addlayer "cautious_layer"
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 15 "NPC_Lung" }
	{ event 6005 32 "NPC_Lung" }
	fadein 0.2
	fadeout 0.2
}

//===================================================================================================
// AP scripted
//===================================================================================================

$weightlist "grub_hold_weights" {
	"ValveBiped.hips" 0.1
	"ValveBiped.leg_bone1_L" 0
	"ValveBiped.leg_bone1_R" 0
	"ValveBiped.spine1" 0.1
	"ValveBiped.spine2" 0.2
	"ValveBiped.spine3" 0.3
	"ValveBiped.spine4" 0.4
	"ValveBiped.clavical_L" 0.5
	"ValveBiped.clavical_R" 0.5
	"ValveBiped.arm1_L" 0.9
	"ValveBiped.arm1_R" 0.9
	"ValveBiped.hand1_L" 1
	//"ValveBiped.hand1_R" 1
}

$sequence "ap_grub_hold_layer" "ez2_lung_anims\ap_eat_grub_interrupted.dmx" {
	angles 90 0 0 frame 0 0
	ikrule "lhand" touch "ValveBiped.hand1_R"
	weightlist "grub_hold_weights"
	worldspace
	//cmdlist releasefeet
	hidden
}

$sequence "ap_grub_hold" "ez2_lung_anims\ap_eat_grub_interrupted.dmx" angles 90 0 0 frame 0 0 cmdlist lockfeet

$sequence "ap_grub_eat_interrupted" "ez2_lung_anims\ap_eat_grub_interrupted.dmx" {
	angles 90 0 0 fps 24
	ikrule "lhand" touch "ValveBiped.hand1_R"
	cmdlist lockfeet
}

$sequence "Walk_hold_grub_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_walkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	addlayer "ap_grub_hold_layer"
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 15 "NPC_Lung" }
	{ event 6005 32 "NPC_Lung" }
}

$sequence "Run_hold_grub_all" {
	"a_runS"
	"a_runSE"
	"a_runE"
	"a_runNE"
	"a_runN"
	"a_runNW"
	"a_runW"
	"a_runSW"
	"a_runS"
	addlayer "ap_grub_hold_layer"
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 3 "NPC_Lung" }
	{ event 6005 15 "NPC_Lung" }
}
