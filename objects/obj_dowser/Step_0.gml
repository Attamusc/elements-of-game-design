/// @description Perform various actions

if (!alive) {
	if (instance_exists(oLevelFourController)) {
		instance_destroy();
		
		oLevelFourController.messages = [
			"NooooOOOOoooOOOOoooooOOOOooo!"
		];
		
		if (instance_exists(obj_exit)) {
			obj_exit.visible = true;
		}
	}
}

image_xscale = dir;

if (paused) {
	sprite_index = spr_dowser_idle;
	return;
}
	
if (attacking) {
	sprite_index = spr_dowser_attack;
	
	if (image_index == sprite_get_number(sprite_index) - 1) {
		var ball = instance_create_layer(x + dir * 20, y - sprite_height / 2, "Instances", obj_dowser_ball);
		ball.dir = dir;
		
		paused = true;
		attacking = false;
		alarm[1] = postAttackPauseTime;
		
	}
}
else {
	sprite_index = spr_dowser_walk;
	
	repeat(abs(vx)) {
		if (!place_meeting(x + dir, y, obj_dowser_bound)) {
			x += dir;
		}
		else {
			alarm[0] = pauseTime;

			paused = true;
			dir = dir == DIRECTION_LEFT ? DIRECTION_RIGHT : DIRECTION_LEFT;
		}
	}
}