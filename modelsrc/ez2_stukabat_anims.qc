
$modelname "stukabat_anims.mdl"

$include "ez2_stukabat_definebones.qci"

$include "ez2_stukabat_anims_shared.qci"

// ----------------------------------------------------------------

$sequence "bullsquid_tailslam_stukabat" {
	"ez2_stukabat_anims\custom\bullsquid_tailslam_stukabat.dmx"
	fps 24 angles 90 0 0
	{ event AE_CL_PLAYSOUND 1 "NPC_FlyingPredator.Alert" }
	{ event AE_CL_PLAYSOUND 8 "NPC_FlyingPredator.Pain" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 20 "ME 200" }
	walkframe 8 LX LZ
	walkframe 20 LX LZ
}

// ----------------------------------------------------------------

$KeyValues
{
}
