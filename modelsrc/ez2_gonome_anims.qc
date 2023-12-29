
$modelname "gonome_anims.mdl"

$include "hl2mp_ported_anims/weaponmacros.qci"
$include "hl2mp_ported_anims/standardikchains.qci"
$include "ez2_gonome_definebones.qci"

$attachment "blend_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 180 0 180
$attachment "forward" "ValveBiped.Bip01_Spine3" -2.00 0.00 -0.00 rotate -0 75 90

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 0.707 0

//$ikautoplaylock "rfoot" 1 0.1
//$ikautoplaylock "lfoot" 1 0.1

$sectionframes 30 120
$animblocksize 32

//-------------------------------------------------------------------------

$animation "body_turn_neutral" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 0 0
$animation "body_turn_mid" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 0 0 subtract "body_turn_neutral" 0
$animation "body_turn_e" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 1 1 subtract "body_turn_neutral" 0
$animation "body_turn_w" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 2 2 subtract "body_turn_neutral" 0
$animation "body_turn_s" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 3 3 subtract "body_turn_neutral" 0
$animation "body_turn_n" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 4 4 subtract "body_turn_neutral" 0
$animation "body_turn_se" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 5 5 subtract "body_turn_neutral" 0
$animation "body_turn_ne" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 6 6 subtract "body_turn_neutral" 0
$animation "body_turn_sw" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 7 7 subtract "body_turn_neutral" 0
$animation "body_turn_nw" "ez2_gonome_anims\custom\body_turn_matrix.smd" frame 8 8 subtract "body_turn_neutral" 0

$sequence "body_turn" {
	body_turn_se	body_turn_s   	body_turn_sw
	body_turn_e    	body_turn_mid  	body_turn_w
	body_turn_ne   	body_turn_n   	body_turn_nw
	
	blendwidth 3
 	calcblend aim_yaw "blend_attachment_head" YR  
 	calcblend aim_pitch "blend_attachment_head" ZR
	delta //autoplay
}

//-------------------------------------------------------------------------

$sequence "walk_new" {
	"ez2_gonome_anims\custom\walk_new.smd"
	activity "ACT_WALK" 1
	{ event 6005 3 "Gonome" }
	{ event 6004 33 "Gonome" }
	fps 30
	loop
	walkframe 60 LX
	ikrule "rfoot" footstep range 0 3 35 38
	ikrule "lfoot" footstep range 0 0 5 8
	ikrule "lfoot" footstep range 30 33 60 60
	addlayer "body_turn"
}

//$sequence "runlong_new" {
//	"ez2_gonome_anims\custom\runlong_new.smd"
//	activity "ACT_RUN" 2
//	{ event 6005 14 "Gonome" }
//	{ event 6004 29 "Gonome" }
//	fps 40
//	loop
//	walkframe 30 LX
//}

//-------------------------------------------------------------------------

$animation "a_RunS" "ez2_gonome_anims\custom\runlong_new_back.smd" {
	fps 40
	loop
	walkframe 30 LX
	ikrule "lfoot" footstep range 0 0 0 2
	ikrule "rfoot" footstep range 9 10 15 17
	ikrule "lfoot" footstep range 26 28 30 30
}

$animation "a_RunE" "ez2_gonome_anims\custom\runlong_new_right.smd" {
	fps 40
	loop
	walkframe 30 LY
	ikrule "lfoot" footstep range 0 0 4 7
	ikrule "rfoot" footstep range 12 13 19 22
	ikrule "lfoot" footstep range 26 28 30 30
}

$animation "a_RunN" "ez2_gonome_anims\runlong.smd" {
	fps 40
	loop
	walkframe 30 LX
	ikrule "lfoot" footstep range 0 0 4 7
	ikrule "rfoot" footstep range 12 13 19 22
	ikrule "lfoot" footstep range 26 28 30 30
}

$animation "a_RunW" "ez2_gonome_anims\custom\runlong_new_left.smd" {
	fps 40
	loop
	walkframe 30 LY
	ikrule "lfoot" footstep range 0 0 4 7
	ikrule "rfoot" footstep range 12 13 19 22
	ikrule "lfoot" footstep range 26 28 30 30
}

$poseparameter "arms_out" 0 1

$sequence "runlong_new_blend" {
	"a_RunS"
	"a_RunE"
	"a_RunN"
	"a_RunW"
	"a_RunS"
	activity "ACT_RUN" 2
	blend "move_yaw" -180 180
	blendwidth 5
	blendlayer "g_arms_out" 0 0 0 1 poseparameter "arms_out"
	{ event 6005 14 "Gonome" }
	{ event 6004 29 "Gonome" }
	addlayer "body_turn"
}

//-------------------------------------------------------------------------

$sequence "jump_glide_end_new" {
	"ez2_gonome_anims\custom\jump_glide_end_new.smd"
	activity "ACT_LAND" 1
	//{ event 1004 5 "Metal_Box.ImpactHard" }
	{ event GONOME_AE_LAND 5 "Gonome.JumpLand" }
	fps 30
	//addlayer "jump_glide_ref"
	walkframe 5 LX LY
}

//-------------------------------------------------------------------------

$weightlist "weights_arms_out" { "ValveBiped.Bip01_Pelvis" 0 "ValveBiped.Bip01_Spine" 0.25 "ValveBiped.Bip01_Spine1" 0.5 "ValveBiped.Bip01_Spine2" 0.75 "ValveBiped.Bip01_Spine3" 1 }

$sequence "g_arms_out" {
	"ez2_gonome_anims\runshort.smd"
	weightlist "weights_arms_out"
	fps 40
	loop
}

//-------------------------------------------------------------------------
// Original anims
//-------------------------------------------------------------------------

$sequence "walk" {
	"ez2_gonome_anims\walk.smd"
	//activity "ACT_WALK" 1
	{ event 6005 3 "Gonome" }
	{ event 6004 33 "Gonome" }
	fps 30
	loop
	walkframe 60 LX
	ikrule "rfoot" footstep range 0 3 35 38
	ikrule "lfoot" footstep range 0 0 5 8
	ikrule "lfoot" footstep range 30 33 60 60
}

$sequence "runlong" {
	"ez2_gonome_anims\runlong.smd"
	//activity "ACT_RUN" 2
	{ event 6005 14 "Gonome" }
	{ event 6004 29 "Gonome" }
	fps 40
	loop
	walkframe 30 LX
	ikrule "lfoot" footstep range 0 0 4 7
	ikrule "rfoot" footstep range 12 13 19 22
	ikrule "lfoot" footstep range 26 28 30 30
}

$sequence "runshort" {
	"ez2_gonome_anims\runshort.smd"
	activity "ACT_RUN_SMG1" 1
	{ event 6005 14 "Gonome" }
	{ event 6004 29 "Gonome" }
	fps 40
	loop
	walkframe 30 LX
	ikrule "lfoot" footstep range 0 0 4 7
	ikrule "rfoot" footstep range 12 13 19 22
	ikrule "lfoot" footstep range 26 28 30 30
}

$sequence "idle1" {
	"ez2_gonome_anims\idle1.smd"
	activity "ACT_IDLE_SMG1" 1
	fps 30
	loop
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "idle2" {
	"ez2_gonome_anims\idle2.smd"
	activity "ACT_IDLE" 2
	fps 30
	loop
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "victoryeat1" {
	"ez2_gonome_anims\victoryeat1.smd"
	activity "ACT_VICTORY_DANCE" 1
	//{ event 1004 20 "gonome/gonome_eat.wav" }
	{ event AE_PREDATOR_EAT 90 "" }
	fps 20
	loop
	cmdlist lockfeet
	blendlayer "idle2" 0 0 0 14 spline
	blendlayer "idle2" 106 120 120 120 spline
}

$sequence "eat_loop" {
	"ez2_gonome_anims\eat_loop.smd"
	//{ event 1004 0 "gonome/gonome_eat.wav" }
	fps 25
	loop
	cmdlist lockfeet
}

$sequence "attack1" {
	"ez2_gonome_anims\attack1.smd"
	activity "ACT_MELEE_ATTACK2" 1
	{ event 2 17 "" }
	{ event 2 35 "" }
	//{ event 1011 1 "gonome/gonome_melee1.wav" }
	fps 37
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "attack2" {
	"ez2_gonome_anims\attack2.smd"
	activity "ACT_MELEE_ATTACK1" 2
	//{ event 1011 1 "gonome/gonome_melee2.wav" }
	{ event 4 31 "" }
	{ event 4 41 "" }
	{ event 4 51 "" }
	{ event 4 59 "" }
	fps 45
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "attack3" {
	"ez2_gonome_anims\attack3.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 6 40 "" }
	{ event 1 62 "" }
	fps 40
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "jump1" {
	"ez2_gonome_anims\jump1.smd"
	activity "ACT_RANGE_ATTACK2" 4
	{ event 1011 1 "gonome/gonome_jumpattack.wav" }
	{ event 4 5 "" }
	{ event 4 10 "" }
	{ event 4 15 "" }
	{ event 2 20 "" }
	{ event 4 25 "" }
	{ event 4 30 "" }
	{ event 2 35 "" }
	{ event 2 40 "" }
	{ event 4 44 "" }
	fps 42
	walkframe 44 LX
	cmdlist releasefeet
}

$sequence "ragdoll" {
	"ez2_gonome_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
	cmdlist releasefeet
}

$sequence "big_flinch" {
	"ez2_gonome_anims\big_flinch.smd"
	activity "ACT_BIG_FLINCH" 1
	fps 30
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "big_flinch2" {
	"ez2_gonome_anims\big_flinch2.smd"
	activity "ACT_HOP" 1
	fps 30
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "small_flinch" {
	"ez2_gonome_anims\small_flinch.smd"
	activity "ACT_SMALL_FLINCH" 1
	fps 30
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "flinch" {
	"ez2_gonome_anims\flinch.smd"
	activity "ACT_SMALL_FLINCH" 5
	fps 30
	cmdlist lockfeet
	addlayer "body_turn"
}

$sequence "dead_on_stomach1_1" {
	"ez2_gonome_anims\dead_on_stomach1_1.smd"
	fps 10
}

$sequence "dead_on_back" {
	"ez2_gonome_anims\dead_on_back.smd"
	fps 10
}

$sequence "dead_on_stomach1_2" {
	"ez2_gonome_anims\dead_on_stomach1_2.smd"
	fps 10
}

$sequence "dead_on_side" {
	"ez2_gonome_anims\dead_on_side.smd"
	fps 10
}

$sequence "sohappy" {
	"ez2_gonome_anims\sohappy.smd"
	fps 35
	loop
}

//-------------------------------------------------------------------------
// Jumping
//-------------------------------------------------------------------------

$weightlist "RefBoneOnly" { "Bip01" 1 "ValveBiped.Bip01_Pelvis" 0 }

$sequence "jump_glide" {
	"ez2_gonome_anims\jump_glide.smd"
	//activity "ACT_JUMP" 1
	fps 30
	//addlayer "jump_glide_ref"
	loop
	walkframe 44 LX LY
	cmdlist releasefeet
}

$sequence "jump_glide_ref" {
	"ez2_gonome_anims\ragdoll.smd"
	hidden
	fps 30
	weightlist "RefBoneOnly"
}

$sequence "jump_glide_start" {
	"ez2_gonome_anims\jump_glide.smd"
	numframes 14
	activity "ACT_JUMP" 1
	fps 30
	//addlayer "jump_glide_ref"
	walkframe 14 LX LY
	cmdlist releasefeet
}

$sequence "jump_glide_mid" {
	"ez2_gonome_anims\jump_glide.smd"
	frame 14 34
	activity "ACT_GLIDE" 1
	fps 15
	origin 0 -48 0
	//addlayer "jump_glide_ref"
	//loop
	walkframe 20 LX LY
	cmdlist releasefeet
}

$sequence "jump_glide_end" {
	"ez2_gonome_anims\jump_glide.smd"
	frame 34 44
	//activity "ACT_LAND" 1
	//{ event 1004 5 "Metal_Box.ImpactHard" }
	{ event GONOME_AE_LAND 5 "Gonome.JumpLand" }
	fps 20
	origin 0 -236 0
	//addlayer "jump_glide_ref"
	walkframe 5 LX LY
	cmdlist releasefeet
}

//-------------------------------------------------------------------------
// Misc
//-------------------------------------------------------------------------

$sequence "wallpound" {
	"ez2_gonome_anims\attack1.smd"
	activity "ACT_ZOMBIE_WALLPOUND" 1
	{ event GONOME_AE_WALL_POUND 17 "Gonome.WallPound" }
	{ event GONOME_AE_WALL_POUND 35 "Gonome.WallPound" }
	//{ event 1011 1 "gonome/gonome_melee1.wav" }
	fps 37
	cmdlist lockfeet
}

$sequence "slumprise_a2" {
	"ez2_gonome_anims\slumprise_a2.smd"
	{ event AE_ZOMBIE_ALERTSOUND 1 "" }
	{ event AE_NPC_RIGHTFOOT 16 "" }
	{ event AE_NPC_RIGHTFOOT 22 "" }
	{ event AE_ZOMBIE_GET_UP 24 "" }
	fps 30
	walkframe 68 LX LY
}

//-------------------------------------------------------------------------
// Gestures
//-------------------------------------------------------------------------

$sequence "g_big_flinch" {
	"ez2_gonome_anims\big_flinch.smd"
	activity "ACT_GESTURE_BIG_FLINCH" 1
	subtract "g_big_flinch" 0
	delta
	fps 30
}

$sequence "g_small_flinch" {
	"ez2_gonome_anims\small_flinch.smd"
	activity "ACT_GESTURE_SMALL_FLINCH" 1
	numframes 8
	subtract "g_small_flinch" 0
	delta
	fps 30
}

$sequence "g_head_flinch" {
	"ez2_gonome_anims\big_flinch.smd"
	activity "ACT_GESTURE_FLINCH_HEAD" 1
	subtract "g_head_flinch" 0
	delta
	fps 30
}

$sequence "g_chest_flinch" {
	"ez2_gonome_anims\big_flinch.smd"
	activity "ACT_GESTURE_FLINCH_CHEST" 1
	subtract "g_chest_flinch" 0
	delta
	fps 30
}

//-------------------------------------------------------------------------

$weightlist weapongesture_noarms_all "Bip01" 1.0 "ValveBiped.Bip01_Pelvis" 1.0 "ValveBiped.Bip01_L_Clavicle" 0.0 "ValveBiped.Bip01_R_Clavicle" 0.0

$definemacro makeweapongesturefull gesturename filename InFrame OutFrame LastFrame \\
$sequence $gesturename$spine $filename$ fps 30 weightlist weapongesture_noarms_all subtract $gesturename$spine 0 delta hidden \\
$sequence $gesturename$arms $filename$ fps 30 weightlist weapongesture_armsonly hidden \\
$sequence $gesturename$ { \\
	$filename$ noanimation numframes $LastFrame$ \\
	blendlayer $gesturename$arms 0 $InFrame$ $outFrame$ $LastFrame$ spline \\
	blendlayer $gesturename$spine 0 $InFrame$ $outFrame$ $LastFrame$ spline \\
} \\
$continue $gesturename$

$makeweapongesturep "g_attack3" "ez2_gonome_anims\attack3.smd" 22 64 84
{
	activity "ACT_GESTURE_RANGE_ATTACK1" 1
	{ event 6 40 "" }
	{ event 1 62 "" }
	fps 40
}

//-------------------------------------------------------------------------
// Dynamic interactions
//-------------------------------------------------------------------------

$sequence "hunter_cit_stomp" {
	"ez2_gonome_anims\custom\hunter_cit_stomp.dmx"
	activity "ACT_DI_HUNTER_THROW" 3
	{ event AE_CL_PLAYSOUND 9 "Gonome.FootstepRight" }
	{ event AE_CL_PLAYSOUND 20 "Gonome.FootstepLeft" }
	{ event AE_CL_PLAYSOUND 22 "Gonome.Growl" }
	{ event AE_CL_PLAYSOUND 56 "Gonome.FootstepLeft" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 60 "THEM 200" }
	{ event AE_CL_PLAYSOUND 64 "Gonome.FootstepRight" }
	{ event AE_CL_PLAYSOUND 72 "Gonome.FootstepLeft" }
	fps 24 angles 90 0 0
	walkframe 24 LX LY
	walkframe 43 LX LY
	walkframe 52 LX LY
	walkframe 72 LX LY
}

$sequence "gonome_swallow_human" {
	"ez2_gonome_anims\custom\gonome_swallow_human.dmx"
	{ event AE_PREDATOR_SWALLOW_INTERACTION_PARTNER 36 "" }
	{ event AE_CL_PLAYSOUND 36 "Player.FallGib" }
	fps 24 angles 90 0 0
	cmdlist lockfeet
}

$sequence "gonome_swallow_babysquid" {
	"ez2_gonome_anims\custom\gonome_swallow_babysquid.dmx"
	{ event AE_PREDATOR_SWALLOW_INTERACTION_PARTNER 36 "" }
	{ event AE_CL_PLAYSOUND 36 "Player.FallGib" }
	fps 24 angles 90 0 0
	ikrule "rfoot" footstep range 0 0 0 3
	ikrule "rfoot" footstep range 6 9 10 13
	ikrule "rfoot" footstep range 17 20 48 48
	ikrule "lfoot" footstep
}

$sequence "gonome_stomp_gib" {
	"ez2_gonome_anims\custom\gonome_stomp_gib.dmx"
	{ event AE_NPC_HURT_INTERACTION_PARTNER 15 "THEM 200" }
	{ event AE_CL_PLAYSOUND 15 "Gonome.FootstepRight" }
	fps 24 angles 90 0 0
	ikrule "rfoot" footstep range 0 0 0 3
	ikrule "rfoot" footstep range 30 33 36 36
	ikrule "lfoot" footstep
}

$KeyValues
{
	dynamic_interactions
	{
		//"hunter_tackle" 
		//{
		//	"trigger" "auto_in_combat"
		//	"origin_relative" "96 0 0"
		//	"angles_relative" "0 0 0"
		//	"origin_max_delta" "2304"
		//	"sequence" "hunter_cit_tackle_di"
		//	"delay" "10.0"
		//}
		//"hunter_throw" 
		//{
		//	"trigger" "auto_in_combat"
		//	"origin_relative" "46.172 0 0"
		//	"angles_relative" "0 180 0"
		//	"origin_max_delta" "2304"
		//	"sequence" "hunter_cit_throw_ground"
		//	"delay" "10.0"
		//}
		"hunter_stomp" 
		{
			"trigger" "auto_in_combat"
			"origin_relative" "46.172 0 0"
			"angles_relative" "0 180 0"
			"end_position" "29.494 -0.0004 0"
			"origin_max_delta" "2304"
			"sequence" "hunter_cit_stomp"
			"delay" "20.0"
			"dont_teleport_at_end" "both"
			//"their_healthfrac_commandable" "0.5"
			"their_healthfrac" "<=0.5"
		}
		"gonome_swallow_human" 
		{
			"trigger" "auto_in_combat"
			"origin_relative" "48 0 0"
			"angles_relative" "0 180 0"
			"origin_max_delta" "256"
			"sequence" "gonome_swallow_human"
			"delay" "15.0"
			"dont_teleport_at_end" "both"
			//"their_healthfrac_commandable" "0.5"
			"their_healthfrac" "<=0.5"
		}
		"gonome_swallow_babysquid" 
		{
			"trigger" "auto_in_combat"
			"origin_relative" "46.172 0 0"
			"angles_relative" "0 180 0"
			"origin_max_delta" "576"
			"sequence" "gonome_swallow_babysquid"
			"delay" "15.0"
			"dont_teleport_at_end" "both"
			"their_healthfrac" "<=0.5"
		}
		"gonome_stomp_gib" 
		{
			"trigger" "auto_in_combat"
			"origin_relative" "48 0 0"
			//"angles_relative" "0 180 0"
			"origin_max_delta" "256"
			"sequence" "gonome_stomp_gib"
			"delay" "15.0"
			"dont_teleport_at_end" "both"
			"their_healthfrac" "<=0.5"
		}
	}
}
