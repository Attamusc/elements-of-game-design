/// @description Move the player while checking for collisions with solid objects

if (!alive) {
	return;
}

image_xscale = dir;

if (attacking) {
	sprite_index = spr_platformer_player_shoot;
	return;	
}

if (grounded) {
	if (vx != 0) {
		sprite_index = spr_platformer_player_walk;
	}
	else {
		sprite_index = spr_platformer_player_idle;
	}
}
else {
	if (collisionLeft || collisionRight) {
		sprite_index = spr_platformer_player_wall_slide;
		image_xscale = collisionRight ? 1 : -1;
	}
	else {
		sprite_index = spr_platformer_player_jump;
		image_index = vy < 0 ? 0 : 1;
	}
}

var tileCollision, solidCollision;

// Vertical
repeat(abs(vy)) {
	tileCollision = place_meeting_collision_tile(bbox_left, bbox_top + sign(vy), bbox_right, bbox_bottom + sign(vy));
	solidCollision = place_meeting(x, y + sign(vy), obj_solid_parent);
	
	if (!tileCollision && !solidCollision) {
        y += sign(vy); 
	}
    else {
        vy = 0;
        break;
    }
}

// Horizontal
repeat(abs(vx)) {
	tileCollision = place_meeting_collision_tile(bbox_left + sign(vx), bbox_top, bbox_right + sign(vx), bbox_bottom);
	solidCollision = place_meeting(x + sign(x), y, obj_solid_parent);

	if (!tileCollision && !solidCollision) {
        x += sign(vx);
	} 
    else {
        vx = 0;
        break;
    }
}
