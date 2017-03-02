/// @description Set the global collision layer

var collisionLayer = layer_get_id("LevelCollisions");
global.collisionTilemap = layer_tilemap_get_id(collisionLayer);

// Enable dust from this point forward
global.dust_enabled = true;

if (!audio_is_playing(snd_spider_dance)) {
	audio_play_sound(snd_spider_dance, 10, 1);
}
