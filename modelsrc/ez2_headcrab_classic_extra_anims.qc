// ================================================================
// 
// E:Z2 Headcrab Activities
// 
// ================================================================

$modelname "headcrabclassic_extra_anims.mdl"

$definebone "HeadcrabClassic.BodyControl" "" 0 8.692983 10.684172 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "HeadcrabClassic.SpineControl" "HeadcrabClassic.BodyControl" 5.836933 -0.820595 0.000175 0 0 0 0 0 0 0 0 0
$definebone "HeadcrabClassic.HeadControl" "HeadcrabClassic.SpineControl" 3.70716 -1.779552 -0.00162 0 0 0 0 0 0 0 0 0
$definebone "HeadcrabClassic.FangL_Bone1" "HeadcrabClassic.HeadControl" 1.884797 0.225918 -3.244098 -7.359758 -99.621492 -49.057731 0 0 0 0 0 0
$definebone "HeadcrabClassic.FangL_Bone2" "HeadcrabClassic.FangL_Bone1" 3.698876 0 0 0.000002 -38.081928 0.000001 0 0 0 0 0 0
$definebone "HeadcrabClassic.FangR_Bone1" "HeadcrabClassic.HeadControl" 1.884668 0.225917 3.247675 7.360101 -99.621205 -130.939945 0 0 0 0 0 0
$definebone "HeadcrabClassic.HoleControlL" "HeadcrabClassic.SpineControl" -1.562495 -4.663179 -3.756904 0 0 0 0 0 0 0 0 0
$definebone "HeadcrabClassic.HoleControlR" "HeadcrabClassic.SpineControl" -1.562644 -4.663178 3.756911 0 0 0 0 0 0 0 0 0
$definebone "HeadcrabClassic.UpperArmL_Bone" "HeadcrabClassic.SpineControl" 2.630715 -3.155085 -5.016712 4.648579 -0.518756 3.763244 0 0 0 0 0 0
$definebone "HeadcrabClassic.ForeArmL_Bone" "HeadcrabClassic.UpperArmL_Bone" 8.255675 0 0 0.000001 -53.959222 0 0 0 0 0 0 0
$definebone "HeadcrabClassic.UpperArmR_Bone" "HeadcrabClassic.SpineControl" 2.630415 -3.155085 5.016869 -4.648464 -0.518813 176.236776 0 0 0 0 0 0
$definebone "HeadcrabClassic.ForeArmR_Bone" "HeadcrabClassic.UpperArmR_Bone" 8.255673 0 0 0 53.959225 0 0 0 0 0 0 0
$definebone "HeadcrabClassic.HipControl" "HeadcrabClassic.BodyControl" -0.450924 -0.675699 0 0 0 0 0 0 0 0 0 0
$definebone "HeadcrabClassic.ThighR_Bone" "HeadcrabClassic.HipControl" 0.000009 0 6.164912 -17.983584 -103.757998 -173.780831 0 0 0 0 0 0
$definebone "HeadcrabClassic.CalfR_Bone" "HeadcrabClassic.ThighR_Bone" 6.098812 0 0 0.000001 -0.040852 0 0 0 0 0 0 0
$definebone "HeadcrabClassic.ThighL_Bone" "HeadcrabClassic.HipControl" -0.000009 0 -6.164912 17.983584 -103.758053 173.796704 0 0 0 0 0 0
$definebone "HeadcrabClassic.CalfL_Bone" "HeadcrabClassic.ThighL_Bone" 6.098812 0 0 0.000001 -0.040853 0.000001 0 0 0 0 0 0

$declaresequence "Idle01"
$declaresequence "IdleB"
$declaresequence "Run1"
$declaresequence "TurnLeft"
$declaresequence "TurnRight"
$declaresequence "jumpattack_broadcast"
$declaresequence "Drown"
$declaresequence "canal5b_sewer_jump"
$declaresequence "headcrabbed"
$declaresequence "headcrabbedpost"
$declaresequence "BurrowIn"
$declaresequence "BurrowOut"
$declaresequence "BurrowIdle"
$declaresequence "cannisterDeploy_A"
$declaresequence "cannisterDeploy_B"
$declaresequence "cannisterDeploy_C"
$declaresequence "testDeploy_A"
$declaresequence "testDeploy_b"
$declaresequence "testDeploy_C"
$declaresequence "ceiling_Idle"
$declaresequence "ceiling_Detach"
$declaresequence "ceiling_fall"
$declaresequence "ceiling_land"
$declaresequence "EP1_KCast_Lamarr_pre"
$declaresequence "EP1_KCast_Lamarr"
$declaresequence "ragdoll"
$declaresequence "alyx_headcrab_stomp"

// ----------------------------------------------------------------

$animation "generic_interaction_yaw_blend_c" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 0
$animation "generic_interaction_yaw_blend_n" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 0 subtract "generic_interaction_yaw_blend_c" 0
$animation "generic_interaction_yaw_blend_ne" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 315 subtract "generic_interaction_yaw_blend_c" 0
$animation "generic_interaction_yaw_blend_e" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 270 subtract "generic_interaction_yaw_blend_c" 0
$animation "generic_interaction_yaw_blend_se" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 225 subtract "generic_interaction_yaw_blend_c" 0
$animation "generic_interaction_yaw_blend_s" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 180 subtract "generic_interaction_yaw_blend_c" 0
$animation "generic_interaction_yaw_blend_sw" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 135 subtract "generic_interaction_yaw_blend_c" 0
$animation "generic_interaction_yaw_blend_w" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 90 subtract "generic_interaction_yaw_blend_c" 0
$animation "generic_interaction_yaw_blend_nw" "ez2_headcrab_classic_anims\ragdoll.smd" angles 0 0 45 subtract "generic_interaction_yaw_blend_c" 0

$sequence "generic_interaction_yaw_blend_layer" {
	"generic_interaction_yaw_blend_s"
	"generic_interaction_yaw_blend_se"
	"generic_interaction_yaw_blend_e"
	"generic_interaction_yaw_blend_ne"
	"generic_interaction_yaw_blend_n"
	"generic_interaction_yaw_blend_nw"
	"generic_interaction_yaw_blend_w"
	"generic_interaction_yaw_blend_sw"
	"generic_interaction_yaw_blend_s"
	fps 24
	blend "interaction_relative_yaw" -180 180
	blendwidth 9
	//walkframe 15 LZ
	delta
}

// ----------------------------------------------------------------

$sequence "bullsquid_snatch_prey" {
	"ez2_headcrab_classic_anims\bullsquid_snatch_prey.dmx"
	{ event AE_CL_PLAYSOUND 6 "NPC_HeadCrab.Pain" }
	fps 24 angles 90 0 0
	blendlayer "generic_interaction_yaw_blend_layer" 0 20 47 47 spline
	//walkframe 15 LZ
}

// ----------------------------------------------------------------

$animation "bullsquid_pounce_prey_blend_n" "ez2_headcrab_classic_anims\bullsquid_pounce_prey.dmx" fps 24 angles 90 0 0
$animation "bullsquid_pounce_prey_blend_ne" "ez2_headcrab_classic_anims\bullsquid_pounce_prey.dmx" fps 24 angles 90 0 315
$animation "bullsquid_pounce_prey_blend_e" "ez2_headcrab_classic_anims\bullsquid_pounce_prey.dmx" fps 24 angles 90 0 270
$animation "bullsquid_pounce_prey_blend_se" "ez2_headcrab_classic_anims\bullsquid_pounce_prey.dmx" fps 24 angles 90 0 225
$animation "bullsquid_pounce_prey_blend_s" "ez2_headcrab_classic_anims\bullsquid_pounce_prey.dmx" fps 24 angles 90 0 180
$animation "bullsquid_pounce_prey_blend_sw" "ez2_headcrab_classic_anims\bullsquid_pounce_prey.dmx" fps 24 angles 90 0 135
$animation "bullsquid_pounce_prey_blend_w" "ez2_headcrab_classic_anims\bullsquid_pounce_prey.dmx" fps 24 angles 90 0 90
$animation "bullsquid_pounce_prey_blend_nw" "ez2_headcrab_classic_anims\bullsquid_pounce_prey.dmx" fps 24 angles 90 0 45

$sequence "bullsquid_pounce_prey_blend_idle_layer" {
	"ez2_headcrab_classic_anims/ragdoll.smd"
	fps 24 noanimation numframes 65
	blendlayer "IdleB" 0 0 0 12
	hidden
}

//$poseparameter interaction_relative_yaw -180 180 wrap

$sequence "bullsquid_pounce_prey" {
	"bullsquid_pounce_prey_blend_n"
	"bullsquid_pounce_prey_blend_nw"
	"bullsquid_pounce_prey_blend_w"
	"bullsquid_pounce_prey_blend_sw"
	"bullsquid_pounce_prey_blend_s"
	"bullsquid_pounce_prey_blend_se"
	"bullsquid_pounce_prey_blend_e"
	"bullsquid_pounce_prey_blend_ne"
	"bullsquid_pounce_prey_blend_n"
	{ event AE_CL_PLAYSOUND 6 "NPC_HeadCrab.Pain" }
	fps 24
	blendlayer "IdleB" 0 0 0 6 spline
	blendlayer "bullsquid_pounce_prey_blend_idle_layer" -135 -90 0 0 poseparameter interaction_relative_yaw
	blendlayer "bullsquid_pounce_prey_blend_idle_layer" 0 0 0 45 poseparameter interaction_relative_yaw
	blend "interaction_relative_yaw" -180 180
	blendwidth 9
	//walkframe 15 LZ
}
