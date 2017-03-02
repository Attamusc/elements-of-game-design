/// @description Insert description here
// You can write your code in this editor

if (dialog_instance != noone) {
	if (dialog_instance.done) {
		global.scene_playing = false;
		
		instance_destroy(dialog_instance);
		dialog_instance = noone;
		
		if (instance_exists(oLevelTwoController)) {
			oLevelTwoController.rock_melter_acquired = true;
		}
	}
}