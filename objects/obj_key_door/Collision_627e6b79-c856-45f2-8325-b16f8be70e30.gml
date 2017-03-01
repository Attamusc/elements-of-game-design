/// @description Open if the player has the blue key

if (instance_exists(oLevelOneController) & oLevelOneController.has_blue_key) {
	opening = true;
	sprite_index = spr_key_door_opening;
}