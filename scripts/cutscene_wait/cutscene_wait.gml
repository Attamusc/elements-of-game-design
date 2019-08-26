///@description cutscene_wait
///@arg seconds

var seconds = argument0 * room_speed;

timer++;

if (timer > seconds) {
	timer = 0;
	cutscene_end_action();
}