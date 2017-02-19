/// @description Update what level the player is currently at

if (keyboard_check_pressed(vk_right) && global.current_level < num_waypoints - 1) {
	global.current_level++;
	
	player.x = waypoints[global.current_level].x;
	player.y = waypoints[global.current_level].y;	
}

if (keyboard_check_pressed(vk_left) && global.current_level > 0) {
	global.current_level--;
	
	player.x = waypoints[global.current_level].x;
	player.y = waypoints[global.current_level].y;
}

if (keyboard_check_pressed(vk_space)) {
	audio_stop_all();
	room_goto(waypoints[global.current_level].target_room);
}