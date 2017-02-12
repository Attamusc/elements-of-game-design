// @description Render contents of the initial slide

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var starting_x = room_width / 2;
var starting_y = room_height / 2;

draw_set_font(fnt_slides_header);
draw_text_color(starting_x, starting_y - 60, "Interesting ideas", c_black, c_black, c_black, c_black, 1);
draw_text_color(starting_x, starting_y, "from various games", c_black, c_black, c_black, c_black, 1);
draw_text_color(starting_x, starting_y + 60, "Sean enjoys", c_black, c_black, c_black, c_black, 1);
