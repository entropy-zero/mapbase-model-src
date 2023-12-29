
$modelname "bullsquid_anims.mdl"

$include "ez2_bullsquid_definebones.qci"
$include "ez2_bullsquid_ikchains.qci"

$attachment "mouth_particle" "Bip01 Head" -6 7 0 rotate 0 0 0

// ----------------------------------------------------------------

$definevariable FootstepSound "NPC_Bullsquid"

$pushd "ez2_bullsquid_anims" // $popd handled by included file
$include "ez2_bullsquid_anims_shared.qci"

// ----------------------------------------------------------------

$sequence "bullsquid_snatch_prey" {
	"ez2_bullsquid_anims\custom\bullsquid_snatch_prey.dmx"
	{ event AE_CL_PLAYSOUND 7 "NPC_Bullsquid.FootstepRight" }
	{ event AE_CL_PLAYSOUND 12 "NPC_Bullsquid.FootstepLeft" }
	{ event AE_CL_PLAYSOUND 4 "NPC_Bullsquid.Bite" }
	{ event AE_CL_PLAYSOUND 16 "Flesh.Break" }
	{ event AE_CL_PLAYSOUND 32 "Breakable.Flesh" }
	{ event AE_PREDATOR_SWALLOW_INTERACTION_PARTNER 32 "" } // AE_PREDATOR_GIB_INTERACTION_PARTNER
	{ event AE_CL_CREATE_PARTICLE_EFFECT 32 "headcrab_gib follow_attachment mouth_particle" } // Must do this on bullsquid because interaction partner doesn't rise
	fps 24 angles 0 0 -90
	walkframe 8 LX LY
	walkframe 47 LX LY
}

// 
$definemacro PouncePreySequence SeqName \\
$sequence $SeqName$ { \\
	"ez2_bullsquid_anims\custom\bullsquid_pounce_prey.dmx" \\
	//{ event AE_CL_PLAYSOUND 6 "NPC_Bullsquid.RunFootstepLeft" } \\
	{ event AE_CL_PLAYSOUND 17 "NPC_Bullsquid.RunFootstepLeft" } \\
	{ event AE_CL_PLAYSOUND 22 "NPC_Bullsquid.Bite" } \\
	{ event AE_CL_PLAYSOUND 38 "Flesh.Break" } \\
	{ event AE_CL_PLAYSOUND 50 "Breakable.Flesh" } \\
	{ event AE_PREDATOR_SWALLOW_INTERACTION_PARTNER 52 "" } \\
	fps 24 angles 0 0 -90 \\
	walkframe 26 LX LY \\
	walkframe 40 LX LY \\
	walkframe 57 LX LY \\
	ikrule "lfoot" footstep range 0 0 5 8 \\
	ikrule "rfoot" footstep range 0 0 7 9 \\
	ikrule "lfoot" footstep range 16 17 57 57 \\
	ikrule "rfoot" footstep range 16 17 57 57 \\
} \\

$PouncePreySequence "bullsquid_pounce_prey"
$PouncePreySequence "bullsquid_pounce_prey_s"
$PouncePreySequence "bullsquid_pounce_prey_se"
$PouncePreySequence "bullsquid_pounce_prey_e"
$PouncePreySequence "bullsquid_pounce_prey_ne"
$PouncePreySequence "bullsquid_pounce_prey_nw"
$PouncePreySequence "bullsquid_pounce_prey_w"
$PouncePreySequence "bullsquid_pounce_prey_sw"

// ----------------------------------------------------------------

$sequence "bullsquid_tackle_zombie" {
	"ez2_bullsquid_anims\custom\bullsquid_tackle_zombie.dmx"
	{ event AE_CL_PLAYSOUND 5 "NPC_Bullsquid.Growl" }
	{ event AE_CL_PLAYSOUND 26 "NPC_Bullsquid.RunFootstepLeft" }
	{ event AE_CL_PLAYSOUND 50 "NPC_Bullsquid.PullHeadcrab" }
	{ event AE_CL_PLAYSOUND 60 "Flesh.Break" }
	{ event AE_BULLSQUID_EAT_HEADCRAB_OFF_ZOMBIE 60 "" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 60 "headcrab_gib follow_attachment mouth_particle" }
	{ event AE_CL_PLAYSOUND 72 "Breakable.Flesh" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 72 "headcrab_gib follow_attachment mouth_particle" }
	fps 30 angles 0 0 -90
	walkframe 5 LX LY
	walkframe 32 LX LY
	walkframe 48 LX LY
	walkframe 58 LX LY
	walkframe 90 LX LY
}

// ----------------------------------------------------------------

$definemacro PouncePreyKV SeqName Origin Angles \\
		$SeqName$ \\
		{ \\
			"trigger" "auto_in_combat" \\
			"origin_relative" $Origin$ \\
			"angles_relative" $Angles$ \\
			"origin_max_delta" "576" \\
			"angles_max_diff" "45" \\
			"sequence" $SeqName$ \\
			"delay" "10.0" \\
			"dont_teleport_at_end" "both" \\
			"related_interactions" "bullsquid_pounce_prey*" \\
		} \\

$KeyValues
{
	dynamic_interactions
	{
		"bullsquid_snatch_prey"
		{
			"trigger" "auto_in_combat"
			"origin_relative" "48 0 0"
			//"angles_relative" "0 180 0"
			"origin_max_delta" "256"
			"sequence" "bullsquid_snatch_prey"
			"delay" "10.0"
			"dont_teleport_at_end" "both"
		}
		
		$PouncePreyKV "bullsquid_pounce_prey" "180 0 0" "0 180 0"
		$PouncePreyKV "bullsquid_pounce_prey_s" "196 0 0" "0 0 0"
		$PouncePreyKV "bullsquid_pounce_prey_se" "196 0 0" "0 315 0"
		$PouncePreyKV "bullsquid_pounce_prey_e" "180 0 0" "0 270 0"
		$PouncePreyKV "bullsquid_pounce_prey_ne" "180 0 0" "0 225 0"
		$PouncePreyKV "bullsquid_pounce_prey_nw" "180 0 0" "0 135 0"
		$PouncePreyKV "bullsquid_pounce_prey_w" "180 0 0" "0 90 0"
		$PouncePreyKV "bullsquid_pounce_prey_sw" "196 0 0" "0 45 0"
		
		"bullsquid_tackle_zombie"
		{
			"trigger" "auto_in_combat"
			"origin_relative" "72 0 0"
			"angles_relative" "0 180 0"
			"origin_max_delta" "256"
			"sequence" "bullsquid_tackle_zombie"
			"delay" "15.0"
			"dont_teleport_at_end" "both"
		}
	}
}
