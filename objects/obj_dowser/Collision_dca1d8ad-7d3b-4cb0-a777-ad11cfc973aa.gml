/// @description Handle being hit by player projectiles

if (dir == DIRECTION_RIGHT && other.dir == DIRECTION_LEFT) {
	hp -= 1;
}
else if (dir == DIRECTION_LEFT && other.dir == DIRECTION_RIGHT) {
	hp -= 1;
}

if (hp == 0) {
	alive = false;
}