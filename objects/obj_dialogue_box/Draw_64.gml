/// @description Draw the dialog text

var portrait_sprite = "";

draw_set_font(fnt_dialog);
draw_set_color(c_white);

if (ds_map_exists(global.portraits, portrait)) {
	portrait_sprite = global.portraits[? portrait];
}


message_end = array_length_1d(message);

if (message_end > 0) {
	var t_y = camera_get_view_height(camera_get_active()) - 55;
	var t_x = 5;
	
	if (portrait_sprite != "") {
		t_x = 60;
	}
	
	if (keyboard_check_pressed(vk_space)) {
		if (message_current < message_end - 1) {
			message_current++;
		}
		else {
			done = true;
		}	
	}
	
	draw_text(t_x, t_y, message[message_current]);
	draw_sprite(portrait_sprite, 0, 5, camera_get_view_height(camera_get_active()) - 55);
}