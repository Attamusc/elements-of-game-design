///@description cutscene_change_variable
///@arg obj
///@arg var_name_as_string
///@arg value

var obj = argument0;
var var_name_as_string = argument1;
var value = argument2;

with(obj) {
	variable_instance_set(id, var_name_as_string, value);
}