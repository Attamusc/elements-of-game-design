/// @description Check if we need to load the next level

if (keyboard_check_pressed(vk_down)) {
	audio_stop_all();
	room_goto(rm_overworld);
}