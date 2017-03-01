// @description Setup the global variables in the game

#macro _gReleaseBuild false

#macro DIRECTION_LEFT -1
#macro DIRECTION_RIGHT 1

global.portraits = ds_map_create();

ds_map_add(global.portraits, "atta", spr_portrait_atta);
ds_map_add(global.portraits, "dowser", spr_portrait_dowser);

global.current_level = 0;
global.dust_enabled = false;
global.lame_attack_enabled = false;
global.awesome_attack_enabled = false;
