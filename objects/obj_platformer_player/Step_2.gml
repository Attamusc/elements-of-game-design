/// @description Move the player while checking for collisions with solid objects

if (vx != 0) {
	sprite_index = spr_platformer_player_walk;
	image_xscale = sign(vx);
}
else {
	sprite_index = spr_platformer_player_idle;
}

// Vertical
repeat(abs(vy)) {
	if (!place_meeting_collision_tile(bbox_left, bbox_top + sign(vy), bbox_right, bbox_bottom + sign(vy))) {
        y += sign(vy); 
	}
    else {
        vy = 0;
        break;
    }
}

// Horizontal
repeat(abs(vx)) {
	if (!place_meeting_collision_tile(bbox_left + sign(vx), bbox_top, bbox_right + sign(vx), bbox_bottom)) {
        x += sign(vx);
	} 
    else {
        vx = 0;
        break;
    }
}
