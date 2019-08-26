if (!instance_exists(oSceneManager)) {
	if (place_meeting(x,y,target)) {
		cutscene_create(t_scene_info);
		instance_destroy();
	}
}