/// @description Handle the slideshow rendering and events

if (keyboard_check_pressed(vk_left) && current_slide > 0) {
	current_slide--;
}

if (keyboard_check_pressed(vk_right)) {
	if (current_slide < max_slide) {
		current_slide++;
	}
	else if (current_slide == max_slide) {
		var xpos = irandom_range(10, room_width - 74);
		var ypos = irandom_range(10, room_height - 42);
		instance_create_layer(xpos, ypos, "Instances", oPowerPointError);
	}
}

if (image_index != current_slide) {
	image_index = current_slide;
}