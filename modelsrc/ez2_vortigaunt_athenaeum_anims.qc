
$modelname "vortigaunt_athenaeum_anims.mdl"

// Must be included
$include "vortikchains.qci"
$include "vortbones.qci"

//$include "vortigaunt_anims_DeclareSequence.qci"

$sequence "ragdoll" "vortigaunt_slave_anims/ragdoll.smd" {
	activity "ACT_DIERAGDOLL" 1
	cmdlist lockfeet
}

//===================================================================================================

$sequence "Idle03" "vortigaunt_anims_hl2\Idle01.smd" activity "ACT_IDLE_HURT" 1

//===================================================================================================

$sequence "vort_v_cop_vorttackle_1" {
	"ez2_vortigaunt_athenaeum_anims\vort_v_cop_vorttackle_1.dmx"
	fps 24
	angles 90 0 0
	{ event AE_CL_PLAYSOUND 64 "NPC_Vortigaunt.Claw" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 66 "THEM 200" }
	
	{ event AE_CL_PLAYSOUND 13 "AI_BaseNPC.BodyDrop_Heavy" }
	{ event AE_CL_PLAYSOUND 41 "Flesh.ImpactHard" }
	{ event AE_CL_PLAYSOUND 47 "Flesh.ImpactHard" }
	{ event AE_CL_PLAYSOUND 53 "Flesh.ImpactHard" }
	walkframe 9 LX LY
	walkframe 26 LX LY
	walkframe 65 LX LY
	walkframe 81 LX LY
}

$include "ez2_vortigaunt_athenaeum_modelkv.qci"

$keyvalues
{
	$VortAthenaeumModelKV
}
