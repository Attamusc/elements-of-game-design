///@description cutscene_create
///@arg scene_info

var my_scene_info = argument0;

var inst = instance_create_layer(0, 0, "Instances", oSceneManager);
with(inst) {
	global.scene_playing = true;
	scene_info = my_scene_info;
	event_perform(ev_other, ev_user0);
}