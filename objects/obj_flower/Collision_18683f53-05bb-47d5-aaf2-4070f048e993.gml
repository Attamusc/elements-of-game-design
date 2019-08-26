/// @description Flutter the flower based on player collision

if (other.vx < 0) {
	sprite_index = spr_flower_left;
}
else if (other.vx > 0) {
	sprite_index = spr_flower_right;
}