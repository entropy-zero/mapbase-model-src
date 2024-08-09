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

$animblocksize 32

$bonesaveframe "HeadcrabClassic.BodyControl" position rotation
$bonesaveframe "HeadcrabClassic.SpineControl" rotation
$bonesaveframe "HeadcrabClassic.HeadControl" rotation
$bonesaveframe "HeadcrabClassic.FangL_Bone1" rotation
$bonesaveframe "HeadcrabClassic.FangL_Bone2" rotation
$bonesaveframe "HeadcrabClassic.FangR_Bone1" rotation
$bonesaveframe "HeadcrabClassic.UpperArmL_Bone" rotation
$bonesaveframe "HeadcrabClassic.ForeArmL_Bone" rotation
$bonesaveframe "HeadcrabClassic.UpperArmR_Bone" rotation
$bonesaveframe "HeadcrabClassic.ForeArmR_Bone" rotation
$bonesaveframe "HeadcrabClassic.HipControl" rotation
$bonesaveframe "HeadcrabClassic.ThighR_Bone" rotation
$bonesaveframe "HeadcrabClassic.CalfR_Bone" rotation
$bonesaveframe "HeadcrabClassic.ThighL_Bone" rotation
$bonesaveframe "HeadcrabClassic.CalfL_Bone" rotation

$sectionframes 30 120

// ----------------------------------------------------------------

$sequence "ragdoll" {
	"ez2_headcrab_classic_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

// ----------------------------------------------------------------

$include "ez2_headcrab_classic_extra_anims_include.qci"
