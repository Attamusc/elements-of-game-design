/// @description Check if we're opened at update sprite accordingly

if (opening && image_index == (sprite_get_number(sprite_index) - 1)) {
	opening = false;
	sprite_index = spr_key_door_open;
}