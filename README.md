
This is Entropy : Zero's fork of Mapbase's model sources. This is used for certain custom animations used by new NPCs, mainly those created for E:Z2 sequel projects and/or NPCs which don't appear in E:Z2 but are still available for modding purposes. Note that some of these animations are meant to be used with models that are not available in E:Z2 or this repository, although they should still function on any model if specified to include them.

All new animation QCs are prefixed with `ez2_` and can be found in the `modelsrc` folder.

Please open an issue if you have trouble compiling any of these files.

Content below is from the original Mapbase model sources:

---

# Mapbase Model Sources

This repository contains most of Mapbase's model and animation source files, primarily `.qc`, `.qci`, `.smd`, and `.blend` files.

The main tools used to create these models and animations were Crowbar, Blender, and Notepad++. The state of these are provided as
they were used during development and there may be a few areas which are messy or otherwise difficult to read or understand.

As with the rest of Mapbase, **leaked content was NOT involved with the creation of these models or animations**.

This repository accepts pull requests for contributing models or animations to Mapbase.

---

Most of these source files are derived from decompiled Half-Life 2, Half-Life 2: Episode One, Half-Life 2: Episode Two, Half-Life 2: Deathmatch, or Left 4 Dead 1 content. Crowbar was used to decompile the content involved.

SMDs under `custom` subfolders (i.e. `combine_soldier_anims_anims/custom/Idle1_Pistol.smd`) are custom animations or modifications of decompiled animations created by Blixibon.

The following model sources or directories are from other external sources:

* `hl2mp_ported_anims` - All files in this directory come from samples distributed as part of the Source SDK.
* `ChoreoModels` - The `body_poses_lean` and `bodyrules_xsi` files come from samples distributed as part of the Source SDK.
