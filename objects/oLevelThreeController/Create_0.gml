/// @description Set the global collision layer

var collisionLayer = layer_get_id("LevelCollisions");
global.collisionTilemap = layer_tilemap_get_id(collisionLayer);