/// @description Insert description here
// You can write your code in this editor

var collisionLayer = layer_get_id("LevelCollisions");
global.collisionTilemap = layer_tilemap_get_id(collisionLayer);

if (!audio_is_playing(snd_guiles_theme)) {
	audio_play_sound(snd_guiles_theme, 10, 1);
}