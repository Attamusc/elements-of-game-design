/// @description Handle debug info and full game controls

if (keyboard_check_pressed(vk_escape)) {
	game_end();
}

if (keyboard_check_pressed(ord("U"))) {
	room_goto(rm_overworld);
	audio_stop_all();
}

auto_toggle_mouse();