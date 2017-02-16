/// @description Initialize auto-hiding cursor variables and set room properties
mouse_xprevious = window_mouse_get_x();
mouse_yprevious = window_mouse_get_y();
mouse_cooldown = 0;

//room_set_width(rm_powerpoint, display_get_width());
//room_set_height(rm_powerpoint, display_get_height());

set_globals();