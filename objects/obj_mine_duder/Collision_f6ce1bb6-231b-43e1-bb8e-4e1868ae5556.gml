/// @description Insert description here
// You can write your code in this editor

if (dialog_instance != noone) {
	return;
}

global.scene_playing = true;
	
dialog_instance = instance_create_layer(0, 0, "Instances", obj_dialogue_box);
dialog_instance.portrait = "";
dialog_instance.message = [
	"Hey There!",
	"Lots of rocks that need melting around here.",
	"Oh? You say you don't have a rock melter?",
	"Here take this one! It'll melt some rocks!"
];