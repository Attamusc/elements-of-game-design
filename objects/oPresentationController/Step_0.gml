/// @description Handle debug info and full game controls

if (keyboard_check_pressed(vk_escape)) {
	game_end();
}

auto_toggle_mouse();