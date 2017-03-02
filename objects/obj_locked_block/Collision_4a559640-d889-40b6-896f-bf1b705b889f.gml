/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)) {
	if (oLevelTwoController.num_keys > 0) {
		oLevelTwoController.num_keys--;
		instance_destroy();
	}
}