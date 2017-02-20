/// @description placeMeetingCollisionTile(bboxLeft, bboxTop, bboxRight, bboxBottom)
/// @param bboxLeft
/// @param bboxTop
/// @param bboxRight
/// @param bboxBottom

var _bboxLeft = argument0;
var _bboxTop = argument1;
var _bboxRight = argument2;
var _bboxBottom = argument3;

var _lowerLeftTileId = tilemap_get_at_pixel(global.collisionTilemap, _bboxLeft, _bboxBottom) & tile_index_mask;
var _lowerRightTileId = tilemap_get_at_pixel(global.collisionTilemap, _bboxRight, _bboxBottom) & tile_index_mask;
var _upperLeftTileId = tilemap_get_at_pixel(global.collisionTilemap, _bboxLeft, _bboxTop) & tile_index_mask;
var _upperRightTileId = tilemap_get_at_pixel(global.collisionTilemap, _bboxRight, _bboxTop) & tile_index_mask;

return _lowerLeftTileId != 0 ||
       _lowerRightTileId != 0 ||
       _upperLeftTileId != 0 ||
	   _upperRightTileId != 0;
