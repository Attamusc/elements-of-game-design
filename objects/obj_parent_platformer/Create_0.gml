/// @description Initialize movement constants

vx = 0;
vy = 0;

spr_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
spr_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
spr_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
spr_bbox_down = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
