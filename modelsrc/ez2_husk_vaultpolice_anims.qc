
$modelname "husks/athenaeum/husk_vaultpolice_animations.mdl"

$include "ez2_vaultpolice_definebones.qci"
$include "hl2mp_ported_anims/standardikchains.qci"

// ----------------------------------------------------------------
// AP scripted
// ----------------------------------------------------------------

$sequence "ap_idle_headbang_glass" "ez2_husk_vaultpolice_anims\ap_idle_headbang.dmx" {
	{ event AE_CL_PLAYSOUND 114 "Glass.ImpactSoft" }
	fps 24 angles 90 0 0
	cmdlist lockfeet
	loop
}
