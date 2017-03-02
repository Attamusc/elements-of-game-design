/// @description Draw the dialog text

var portrait_sprite = "";

draw_set_font(fnt_dialog);
draw_set_color(c_white);

if (ds_map_exists(global.portraits, portrait)) {
	portrait_sprite = global.portraits[? portrait];
}


message_end = array_length_1d(message);

if (message_end > 0) {
	var char_width = 12;
	var line_end = 45;
	var line_spacing = 18;
	var line = 0;
	var space = 0;
	var i = 1;
	var delay = 0;
	
	var t_y = 360 - 48;
	var t_x = 10;
	
	if (portrait_sprite != "") {
		t_x = 65;
	}
	
	if (cutoff < string_length(message[message_current])) {
		if (timer >= delay) {
			cutoff++;
			timer = 0;
		}
		else {
			timer++;
		}
	}
	
	if (keyboard_check_pressed(vk_space)) {
		if (message_current < message_end - 1) {
			message_current++;
			cutoff = 0;
		}
		else {
			done = true;
		}	
	}
	
	draw_nine_slice(spr_dialogue_box, 0, 300, 640, 360);
	
	if (portrait_sprite != "") {
		draw_sprite(portrait_sprite, 0, 5, 360 - 55);
	}
	
	while (i <= string_length(message[message_current]) && i <= cutoff) {
		var length = 0;
		while (string_char_at(message[message_current], i) != " " && i <= string_length(message[message_current])) {
			i++;
			length++;
		}
		
		if (space + length > line_end) {
			space = 0;
			line++;
		}
		
		i -= length;
		
		draw_text(t_x + (space * char_width), t_y + (line_spacing * line), string_char_at(message[message_current], i));
		
		space++;
		i++;
	}
}