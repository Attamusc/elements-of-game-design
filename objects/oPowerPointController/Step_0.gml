/// @description Handle the slideshow rendering and events

if (keyboard_check_pressed(vk_left) && current_slide > 0) {
	current_slide--;
}

if (keyboard_check_pressed(vk_right)) {
	if (current_slide < max_slide) {
		current_slide++;
	}
	else if (current_slide == max_slide) {
		var xpos, ypos;
		
		if (first_error_shown) {
			xpos = irandom_range(10, room_width - 42);
			ypos = irandom_range(10, room_height - 42);
			instance_create_layer(xpos, ypos, "Errors", oPowerPointError);
		}
		else {
			xpos = room_width / 2;
			ypos = 50;
			
			var error_obj = instance_create_layer(xpos, ypos, "Errors", oPowerPointError);
			error_obj.image_xscale = 1;
			error_obj.image_yscale = 1;
			error_obj.image_angle = 0;
			error_obj.image_blend = c_red;
			
			first_error_shown = true;
		}		
	}
}

if (keyboard_check_pressed(vk_down) && current_slide == max_slide) {
	room_goto(rm_boss_monologue);
}

if (image_index != current_slide) {
	image_index = current_slide;
}