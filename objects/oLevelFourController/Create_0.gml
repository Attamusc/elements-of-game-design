/// @description Set the global collision layer

var collisionLayer = layer_get_id("LevelCollisions");
global.collisionTilemap = layer_tilemap_get_id(collisionLayer);

global.awesome_attack_enabled = true;

dialog_instance = noone;
messages = [
	"Oh look! You made it here loser.",
	"Prepare to get your ass kicked!!"
];