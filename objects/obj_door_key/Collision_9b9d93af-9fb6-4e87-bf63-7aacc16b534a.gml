/// @description Acquire the key on collision

if (instance_exists(oLevelOneController)) {
	oLevelOneController.has_blue_key = true;
	instance_destroy();
}