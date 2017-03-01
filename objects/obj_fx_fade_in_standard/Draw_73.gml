/// @description Standard quick fade in transition

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

draw_set_alpha(image_alpha);
draw_rectangle_colour(view_x, view_y, view_x + 640, view_y + 360, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1.0);

image_alpha -= 0.2;

if (image_alpha <= 0) {
    instance_destroy();
}