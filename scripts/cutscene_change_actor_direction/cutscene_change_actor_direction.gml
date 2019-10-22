///@description cutscene_change_xscale
///@arg obj_id
///@arg new_direction*

var obj_id = argument0;
var new_direction = 0;

if (argument_count > 1) {
	new_direction = argument[1];
	with(obj_id) {
		dir = new_direction;	
	}
}
else {
	with(obj_id) {
		dir = -dir;	
	}
}

cutscene_end_action();