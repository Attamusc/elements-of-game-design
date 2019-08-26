///@description cutscene_move_actor
///@arg obj
///@arg x
///@arg y
///@arg relative
///@arg spd

var obj = argument0;
var target_x = argument1;
var target_y = argument2;
var relative = argument3;
var spd = argument4;

if (x_dest == -1) {
	if (!relative) {
		x_dest = target_x;
		y_dest = target_y;
	}
	else {
		x_dest = obj.x + target_x;
		y_dest = obj.y + target_y;
	}
}
	
var xx = x_dest;
var yy = y_dest;

with(obj) {
	sprite_index = spr_walk;
	
	if (point_distance(x, y, xx, yy) >= spd) {
		var dir = point_direction(x, y, xx, yy);
		var ldirx = lengthdir_x(spd, dir);
		var ldiry = lengthdir_y(spd, dir);
		
		if (ldirx != 0) {
			image_xscale = sign(dir);
		}
		
		x += ldirx;
		y += ldiry;
	}
	else {
		sprite_index = spr_idle;
		
		x = xx;
		y = yy;
	}
}