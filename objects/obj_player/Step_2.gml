/// @description Insert description here
// You can write your code in this editor
halfviewWidth = camera_get_view_width(view_camera[0]) / 2;
halfviewHeight = camera_get_view_height(view_camera[0]) / 2;

cx = x - halfviewWidth;
cy = y - halfviewHeight;

cx = clamp(cx, min_view_x, max_view_x);
cy = clamp(cy, min_view_y, max_view_y);

camera_set_view_pos(view_camera[0], cx, cy);

// Initialize a boolean variable to track the state of the light
global.lightOn = false;