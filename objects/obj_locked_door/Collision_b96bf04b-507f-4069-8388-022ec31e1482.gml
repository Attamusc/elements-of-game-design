/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)) {
	if (sprite_index = spr_door_unlocked) {
		audio_stop_all();
		room_goto(rm_overworld);
	}
	
	if (oLevelTwoController.num_keys > 0) {
		oLevelTwoController.num_keys--;
		sprite_index = spr_door_unlocked;
	}
}