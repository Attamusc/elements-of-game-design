// @description Auto show and hide the mouse based on movement

if (window_mouse_get_x() != mouse_xprevious || window_mouse_get_y() != mouse_yprevious || mouse_check_button_pressed(mb_any) || 0) {
	mouse_cooldown = room_speed;
}

mouse_xprevious = window_mouse_get_x();
mouse_yprevious = window_mouse_get_y();

if (mouse_cooldown > 0 && window_get_cursor() == cr_none) {
	window_set_cursor(cr_default);
}
else if (mouse_cooldown <= 0 && window_get_cursor() != cr_none) {
	window_set_cursor(cr_none);
}

if (mouse_cooldown > 0) {
	mouse_cooldown -= 1;
}