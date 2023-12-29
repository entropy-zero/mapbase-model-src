
$modelname "babysquid_anims.mdl"

$include "ez2_babysquid_definebones.qci"
$include "ez2_bullsquid_ikchains.qci"

$definevariable FootstepSound "NPC_Babysquid"

$pushd "ez2_babysquid_anims" // $popd handled by included file
$include "ez2_bullsquid_anims_shared.qci"

// NOTE: Any regular bullsquid animations can be converted to babysquid by using "$scale 0.5"
// Keep this in mind for any future application
// (use $scale 1 afterwards to reset)

// ----------------------------------------------------------------

$sequence "gonome_swallow_babysquid" {
	"ez2_babysquid_anims\custom\gonome_swallow_babysquid.dmx"
	{ event AE_CL_PLAYSOUND 10 "NPC_Babysquid.Pain" }
	{ event AE_CL_PLAYSOUND 25 "BaseCombatCharacter.CorpseGib" }
	{ event AE_CL_PLAYSOUND 27 "Flesh.Break" }
	{ event AE_CL_PLAYSOUND 26 "Flesh.Break" }
	{ event AE_CL_PLAYSOUND 29 "Flesh.Break" }
	{ event AE_CL_PLAYSOUND 32 "Flesh.Break" }
	fps 24 angles 0 0 -90
}

$sequence "gonome_stomp_gib" {
	"ez2_babysquid_anims\custom\gonome_stomp_gib.dmx"
	fps 24 angles 0 0 -90
}

// ----------------------------------------------------------------

$sequence "vort_antlion_ground_nohurt" {
	"ez2_babysquid_anims\custom\vort_antlion_ground_nohurt.dmx"
	{ event AE_CL_PLAYSOUND 10 "NPC_Babysquid.Growl" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 27 "THEM 15" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 40 "ME 5" }
	//{ event AE_CL_PLAYSOUND 41 "NPC_Babysquid.Pain" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 48 "ME 5" }
	fps 24 angles 0 0 -90
	walkframe 26 LX LY
	walkframe 39 LX LY
	walkframe 51 LX LY
	walkframe 70 LX LY
}

$KeyValues
{
	dynamic_interactions
	{
		"vort_antlion_ground_nohurt" 
		{
			"trigger" "auto_in_combat"
			"origin_relative" "71 0 0"
			"angles_relative" "0 180 0"
			"end_position" "-34.403 10.9675 0"
			"origin_max_delta" "256"
			"sequence" "vort_antlion_ground_nohurt"
			"delay" "15.0"
			"dont_teleport_at_end" "both"
			"their_health" ">15" // Don't kill mid-animation
		}
	}
}
