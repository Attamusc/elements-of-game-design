/// @desc onGround()

var _lowerLeftTileId = tilemap_get_at_pixel(global.collisionTilemap, bbox_left, bbox_bottom + 1) & tile_index_mask;
var _lowerRightTileId = tilemap_get_at_pixel(global.collisionTilemap, bbox_right, bbox_bottom + 1) & tile_index_mask;

return _lowerLeftTileId != 0 ||
       _lowerRightTileId != 0;