/// @description Attack the f***ing player

if (!instance_exists(obj_platformer_player)) {
	return;
}

if (distance_to_object(obj_platformer_player) < 100) {
	attacking = true;
	sprite_index = spr_super_enemy_attack;
	image_xscale = x < obj_platformer_player.x ? 1 : -1;
}
else {
	attacking = false;
	sprite_index = spr_super_enemy_idle;
}