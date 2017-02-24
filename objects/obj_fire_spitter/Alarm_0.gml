/// @description Spawn DAT FLAME PILLAR!!!

if (!instance_exists(fire_pillar)) {
	fire_pillar = instance_create_layer(x, y, "Obstacles", obj_fire_pillar);
	alarm[0] = room_speed;
}
else {
	instance_destroy(fire_pillar);
	fire_pillar = noone;
	alarm[0] = room_speed * 2;
}