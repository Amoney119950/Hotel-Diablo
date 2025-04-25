// Timer
step_count = 0
seconds = 0
global.game_time = 230 // 6:30 390.... 230

// Health
global.health = 100

// Battery
global.batteryTotal = 50

// State
game_state = 0

// Flashlight
function light_on() {
    // Code to enable the light
}

function light_off() {
    // Code to disable the light
}
lightState = false; // Light is initially off
global.is_dark_room = false; // Initialize to false initially

// Music
audio_stop_all();
audio_play_sound(mus_background,1000,true);

// Set up the room titles using a ds_map
room_titles = ds_map_create();
ds_map_add(room_titles, "rm_alone", "Autophobia");
ds_map_add(room_titles, "rm_snakes", "Ophidiophobia");
ds_map_add(room_titles, "rm_spiders", "Arachnophobia");
ds_map_add(room_titles, "rm_blood", "Hemophobia");
ds_map_add(room_titles, "rm_darkness", "Nyctophobia");
ds_map_add(room_titles, "rm_height", "Acrophobia");
ds_map_add(room_titles, "rm_fail", "Achievemephobia");

// Display the title of the current room
var current_room = room_get_name(room);
var room_title = ds_map_find_value(room_titles, current_room);


global.music_volume = 100; // or whatever default you want
global.sound_volume = 100;
