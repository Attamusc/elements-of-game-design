/// @description Insert description here
// You can write your code in this editor

x += vx * dir;
image_xscale = dir;

if (place_meeting_collision_tile(bbox_left, bbox_top, bbox_right, bbox_bottom)) {
	instance_destroy();
}