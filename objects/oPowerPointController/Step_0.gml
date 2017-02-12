/// @description Handle the slideshow rendering and events

if (keyboard_check_pressed(vk_left) && current_slide > 0) {
	current_slide--;
}

if (keyboard_check_pressed(vk_right) && current_slide < max_slide) {
	current_slide++;
}

show_debug_message("Current Slide: " + string(current_slide));

if (image_index != current_slide) {
	image_index = current_slide;
}