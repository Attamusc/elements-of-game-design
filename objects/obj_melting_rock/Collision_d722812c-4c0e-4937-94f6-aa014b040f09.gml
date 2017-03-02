/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)) {
	if (oLevelTwoController.rock_melter_acquired) {
		instance_destroy();
	}
}