
$modelname "husks/husk_charger_animations.mdl"

$cdmaterials "models\zombie_soldier\"

$definevariable FootstepSound "NPC_HuskCharger"

$definevariable DefaultAnimScale 1.025
$definevariable CitizenAnimScale 1.17875

$include "ez2_charger_definebones.qci"

$lockbonelengths
$scale 1.025

$include "ez2_husk_anims_base.qci"

$alwayscollapse "ValveBiped.Cod"

$append "a_zombine_WalkS" fps 25
$append "a_zombine_WalkSE" fps 25
$append "a_zombine_WalkE" fps 25
$append "a_zombine_WalkNE" fps 25
$append "a_zombine_WalkN" fps 25
$append "a_zombine_WalkNW" fps 25
$append "a_zombine_WalkW" fps 25
$append "a_zombine_WalkSW" fps 25
$append "a_zombine_WalkS" fps 25

$append "a_zombine_Run_ne" fps 25
$append "a_zombine_Run_n" fps 25
$append "a_zombine_Run_nw" fps 25

$animation "a_sprint" "male_shared_anims\a_sprint.smd" {
	fps 25
	loop
	ikrule "lfoot" footstep contact 6 fakeorigin 7.04 3.15 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 15 6 9 15 target 3
	ikrule "rfoot" footstep contact 14 fakeorigin 7.03 -1.15 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 7 14 1 7 target 2
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	walkframe 16 LX LY
}
$append "slumprise_a" fps 15
$append "slumprise_a2" fps 15
$append "slumprise_b" fps 15

$scale 1.0

$sequence "layer_charge_husk_upperBody" {
	"ez2_husk_anims/husk_charge_layer.smd"
	hidden
	loop
	weightlist "weights_layer_upperBody"
}

$sequence "charge_All" {
	"a_zombine_WalkS"
	"a_zombine_WalkSE"
	"a_zombine_WalkE"
	"a_zombine_run_ne"
	"a_sprint"
	"a_zombine_run_nw"
	"a_zombine_WalkW"
	"a_zombine_WalkSW"
	"a_zombine_WalkS"
	activity "ACT_CHARGE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 15 $FootstepSound$ }
	{ event 6005 7 $FootstepSound$ }
	addlayer "layer_charge_husk_upperBody"
}

//-------------------------------------------
