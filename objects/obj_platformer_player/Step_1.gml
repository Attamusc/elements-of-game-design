/// @description Update various collision properties

event_inherited();

collisionLeft = place_meeting(x - 1, y, obj_solid_parent) || 
                place_meeting_collision_tile(bbox_left - 1, bbox_top, bbox_right - 1, bbox_bottom);
collisionRight = place_meeting(x + 1, y, obj_solid_parent) ||
                 place_meeting_collision_tile(bbox_left + 1, bbox_top, bbox_right + 1, bbox_bottom);
