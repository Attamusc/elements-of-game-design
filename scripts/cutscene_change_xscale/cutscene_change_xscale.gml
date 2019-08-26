///@description cutscene_change_xscale
///@arg obj_id
///@arg new_image_xscale*

var obj_id = argument0;
var new_image_xscale = 0;

if (argument_count > 1) {
	new_image_xscale = argument[1];
	with(obj_id) {
		image_xscale = new_image_xscale;	
	}
}
else {
	with(obj_id) {
		image_xscale = -image_xscale;	
	}
}

cutscene_end_action();