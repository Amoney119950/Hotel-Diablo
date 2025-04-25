// Timer
step_count += 1;
seconds = floor(step_count / room_speed);
countdownSeconds = global.game_time - seconds;

// Check if the current room is rm_finish
if room == rm_finish {
    // Stop all audio if desired
    audio_stop_all();

    // Use a 'with' loop to handle all instances of obj_game_controller in the room
    with (obj_game_controller) {
        // Destroy each instance of the game controller
        instance_destroy();
    }
}

// Check if the game timer has reached zero
if countdownSeconds == 0 {
    // Move to the room rm_fail
    room_goto(rm_fail);
}

// Check if the Health has reached zero
if global.health == 0 {
    // Move to the room rm_fail
    room_goto(rm_fail);
}

// Flashlight
if (room == rm_darkness) {
    global.is_dark_room = true;
} else {
    global.is_dark_room = false;
}
if (lightState && global.is_dark_room) {
    global.batteryTotal -= (1 / room_speed); // Continuously decrease battery

    if (global.batteryTotal <= 0) {
        global.batteryTotal = 0;
        light_off(); // Turn off the light when the battery is depleted
        lightState = false;
    }
}

// Step event of obj_controller
if (keyboard_check(vk_control) && keyboard_check_pressed(ord("F"))) {
    toggle_fullscreen();
}