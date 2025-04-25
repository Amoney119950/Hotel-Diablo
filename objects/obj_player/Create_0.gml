hsp = 0
vsp = 0
grv = 0.3
walkspeed = 4
hascontrol = true
controller = 0
// Start a timer to stop player movement after 1 second
push_timer = 0; // 60 steps = 1 second (assuming 60 steps per second)
/* lightState = false; // Initial state of the light (off)
*/

min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);

SAVEFILE = "savefile.sav"; // or any other appropriate value