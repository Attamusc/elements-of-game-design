/// @description

if (visible && keyboard_check_pressed(vk_space)) {
	room_goto(target_room);
	
	if (stop_sounds) {
		audio_stop_all();
	}
}