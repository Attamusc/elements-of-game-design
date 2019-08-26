///@description cutscene_instance_create
///@arg x
///@arg y
///@arg layer_id
///@arg obj

var my_x = argument0;
var my_y = argument1;
var layer_id = argument2;
var obj = argument3;

var inst = instance_create_layer(my_x, my_y, layer_id, obj);
cutscene_end_action();
return inst;