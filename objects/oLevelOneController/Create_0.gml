/// @description Insert description here
// You can write your code in this editor

var collisionLayer = layer_get_id("LevelCollisions");
global.collisionTilemap = layer_tilemap_get_id(collisionLayer);

has_blue_key = false;

if (!audio_is_playing(snd_green_hill_zone)) {
	audio_play_sound(snd_green_hill_zone, 10, 1);
}