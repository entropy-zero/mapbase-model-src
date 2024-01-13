// ================================================================
// 
// E:Z2 Zombie Activities
// 
// ================================================================

$modelname "zombie/classic_extra_anims.mdl"

$definebone "ValveBiped.Bip01_Pelvis" "" -0.000005 1.515989 38.353996 0 -0.000057 90.000037 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890453 -0.000001 -0.000004 -6.298009 -90.530886 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.593168 0 0 0 16.008157 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.699579 0 0 -2.794963 -66.211956 -0.906613 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879456 0 0 2.831041 -33.495514 -3.654004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890452 -0.000001 0.000007 -6.255897 -90.309895 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.593164 0 0 0 16.011995 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.699577 0 0 2.33062 -66.226587 2.220957 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.879456 0 0 -3.168915 -33.46875 -1.473704 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000002 3.345117 -2.981992 4.944339 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.126705 0 0 0 5.074516 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.613468 0 0 0 7.43745 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 9.183786 0 0 0 20.151327 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.673226 1.247213 2.595464 -73.711914 168.587701 91.510847 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028144 0.000002 0 -12.91292 -32.801775 -101.833749 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692552 0 -0.000002 -0.000001 0.000001 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 12.075551 0 -0.000034 -7.742148 1.798745 -178.061242 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 5.564225 -0.55798 -0.100454 -51.159985 -75.906092 -14.492053 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 5.508581 0.000001 0.000001 -0.128403 -78.099989 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 3.800001 0.000001 0 4.526078 -66.592992 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 5.744637 0.55798 0.100453 -61.369393 -58.71764 8.796274 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 6.052545 0 -0.000001 -23.542209 -84.10796 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 3.325016 -0.000002 0.000001 -2.203884 -59.043413 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 5.613006 1.658157 0.708444 -70.499478 -87.096974 76.889618 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 5.643139 0.000001 0.000001 -51.519625 -88.553491 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 3.079117 -0.000003 0 -7.424503 -67.370787 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.673228 1.247218 -2.595471 73.711914 168.587141 -95.626931 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028143 -0.000001 -0.000001 15.946161 -31.150741 105.625228 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692555 0 0 0.000002 0.000001 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 12.075577 0 -0.000002 3.975641 5.609831 -177.6521 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 5.943744 -0.602343 0.006442 74.957945 -83.501617 28.170793 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 5.043456 0.000001 0 -13.470006 -76.728501 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 3.384895 0.000001 0 -9.064307 -97.57958 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 6.213897 0.602343 -0.006442 74.259169 -34.667622 -19.526964 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 5.536302 0 0 65.687206 -54.304481 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 3.312718 0.000001 0 29.106206 -76.658198 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 5.899514 1.775719 -0.435098 84.408202 -51.263237 -93.161936 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 5.285242 0 0 68.230564 26.411804 0.000007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 3.09885 0.000001 -0.000003 49.308976 76.043699 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 4.015265 1.836178 -0.57813 61.681943 75.212404 147.088698 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 2.400002 -0.000001 0 -42.749987 0.000001 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.399998 0 0.000001 -52.875008 0.000002 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 3.420513 1.944044 0.267537 -56.41616 68.849393 -156.975915 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 2.524998 -0.000002 0 38.249975 -0.000005 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.582001 0.000001 0 48.374996 -0.000004 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_Body_Bone" "ValveBiped.Bip01_Spine4" 7.856863 0.357139 2.41031 -9.085849 72.317298 154.900057 0 0 0 0 0 0
$definebone "ValveBiped.HC_Head_Bone" "ValveBiped.HC_Body_Bone" 3.738598 -2.965121 -0.136398 -4.500011 -4.50001 12.374975 0 0 0 0 0 0
$definebone "ValveBiped.HC_Rear_Bone" "ValveBiped.HC_Body_Bone" -7.842795 -1.678411 -0.934004 -0.000003 20.249984 29.250012 0 0 0 0 0 0
$definebone "ValveBiped.HC_ThighL_Bone" "ValveBiped.HC_Rear_Bone" -0.450934 -0.675704 -6.164912 -30.718472 -70.093396 -172.984649 0 0 0 0 0 0
$definebone "ValveBiped.HC_CalfL_Bone" "ValveBiped.HC_ThighL_Bone" 6.098811 -0.000001 0 -0.000002 -0.000006 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_ThighR_Bone" "ValveBiped.HC_Rear_Bone" -0.450915 -0.675702 6.164912 -7.079966 -90.538652 174.066278 0 0 0 0 0 0
$definebone "ValveBiped.HC_CalfR_Bone" "ValveBiped.HC_ThighR_Bone" 6.09881 0 0 0.000002 -130.088644 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.HC_UpperArmL_Bone" "ValveBiped.HC_Body_Bone" 2.630715 -3.155085 -5.016712 17.05689 -28.796166 1.880337 0 0 0 0 0 0
$definebone "ValveBiped.HC_ForeArmL_Bone" "ValveBiped.HC_UpperArmL_Bone" 8.255678 0 0.000001 0.000006 -121.038766 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_UpperArmR_Bone" "ValveBiped.HC_Body_Bone" 2.630416 -3.155087 5.016868 -4.143286 -63.369641 -131.616994 0 0 0 0 0 0
$definebone "ValveBiped.HC_ForeArmR_Bone" "ValveBiped.HC_UpperArmR_Bone" 8.255675 -0.000001 0 0.000012 110.674589 -0.000002 0 0 0 0 0 0

$include "hl2mp_ported_anims/standardikchains.qci"

// ----------------------------------------------------------------

$sequence "bullsquid_tackle_zombie" {
	"ez2_zombie_classic_anims\bullsquid_tackle_zombie.dmx"
	fps 30 angles 90 0 0
	{ event AE_CL_PLAYSOUND 10 "Flesh.ImpactHard" }
	{ event AE_CL_PLAYSOUND 10 "Zombie.Pain" }
	{ event AE_CL_PLAYSOUND 21 "AI_BaseNPC.BodyDrop_Heavy" }
	{ event AE_CL_PLAYSOUND 25 "Flesh.ImpactHard" }
	{ event AE_CL_PLAYSOUND 50 "Zombie.Pain" }
}

$sequence "grunt_pushdown_zombie" {
	"ez2_zombie_classic_anims\grunt_pushdown_zombie.dmx"
	fps 30 angles 90 0 0
	{ event AE_CL_PLAYSOUND 5 "Zombie.Alert" }
	{ event AE_CL_PLAYSOUND 28 "Zombie.Pain" }
	{ event AE_CL_PLAYSOUND 36 "AI_BaseNPC.BodyDrop_Heavy" }
	{ event AE_ZOMBIE_POPHEADCRAB 54 "ValveBiped.Bip01_L_Foot 500" }
}

// ----------------------------------------------------------------

$sequence "hunter_cit_throw_ground" {
	"ez2_zombie_classic_anims\hunter_cit_throw_ground.dmx"
	fps 24 angles 90 0 0
	{ event AE_CL_PLAYSOUND 5 "Zombie.Alert" }
	{ event AE_CL_PLAYSOUND 19 "Zombie.Pain" }
	{ event AE_CL_PLAYSOUND 45 "Zombie.Pain" }
}
