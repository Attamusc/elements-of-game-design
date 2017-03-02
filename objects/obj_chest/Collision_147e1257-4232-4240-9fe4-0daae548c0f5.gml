/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space) && sprite_index != spr_cheat_open) {
	sprite_index = spr_cheat_open;
	oLevelTwoController.num_keys++;
}