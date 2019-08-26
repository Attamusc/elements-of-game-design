///@description cutscene_instance_destroy_nearest
///@arg x
///@arg y
///@arg obj

var my_x = argument0;
var my_y = argument1;
var obj = argument2;

var inst = instance_nearest(my_x, my_y, obj);

cutscene_instance_destroy(inst);