///@description cutscene_end_action

var scene_length = array_length_1d(scene_info);

scene++;
if (scene > scene_length - 1) {
	instance_destroy();
	exit;
}

event_perform(ev_other, ev_user0);