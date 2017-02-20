/// @desc getInputs()

var threshold = 0.5;

if (gamepad_is_connected(0)) {
	left = gamepad_axis_value(0, gp_axislh) < -threshold;
	right = gamepad_axis_value(0, gp_axislh) > threshold;
	up = gamepad_axis_value(0, gp_axislv) < -threshold
	down = gamepad_axis_value(0, gp_axislv) > threshold;
	
	jumpPressed = gamepad_button_check_pressed(0, gp_face1);
	jumpReleased = gamepad_button_check_released(0, gp_face1);
	
	attackPressed = gamepad_button_check_pressed(0, gp_face2);
	attackReleased = gamepad_button_check_released(0, gp_face2);
	
	dashPressed = gamepad_button_check_pressed(0, gp_face3);
	dashReleased = gamepad_button_check_released(0, gp_face3);
}
else {
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);
	
	jumpPressed = keyboard_check_pressed(vk_space);
	jumpReleased = keyboard_check_released(vk_space);
	
	attackPressed = keyboard_check_pressed(ord("V"));
	attackReleased = keyboard_check_released(ord("V"));
	
	dashPressed = keyboard_check_pressed(ord("X"));
	dashReleased = keyboard_check_released(ord("X"));
}
