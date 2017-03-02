/// @description Insert description here
// You can write your code in this editor

if (dialog_instance != noone) {
	if (dialog_instance.done) {
		global.scene_playing = false;
		
		instance_destroy(dialog_instance);
		dialog_instance = noone;
		messages = [];
		
		if (instance_exists(obj_dowser)) {
			obj_dowser.paused = false;
		}
	}
}
else if (array_length_1d(messages) > 0) {
	global.scene_playing = true;
	
	dialog_instance = instance_create_layer(0, 0, "Instances", obj_dialogue_box);
	dialog_instance.portrait = "dowser";
	dialog_instance.message = messages;
}