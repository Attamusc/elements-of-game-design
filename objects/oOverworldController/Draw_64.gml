/// @description Draw current level information

var current_level_text = waypoints[global.current_level].name;

var box_width = 250;
var box_height = 50;

var x1 = display_get_gui_width() - box_width;
var y1 = display_get_gui_height() - box_height;
var x2 = display_get_gui_width();
var y2 = display_get_gui_height();

draw_nine_slice(spr_dialogue_box, x1, y1, x2, y2);

var text_x = x1 + (box_width - string_width(current_level_text)) / 2;
var text_y = y1 + (box_height - string_height(current_level_text)) / 2;
draw_text(text_x, text_y, current_level_text);