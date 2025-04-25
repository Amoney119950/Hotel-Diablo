// Draw the UI frame
draw_sprite(ui_frame, 0, 25, 30);

// Draw Time HUD
var flash_period = 1; // Flash every second
var flash_state = floor(countdownSeconds) % (flash_period * 2);

// Set color based on flashing state
if (countdownSeconds <= 45 && flash_state < flash_period) {
    draw_set_color(c_red);
} else {
    draw_set_color(c_white);
}
draw_text(100, 60, "Game Time: " + string(countdownSeconds));

// Draw Health HUD
if (global.health <= 30) {
    // Flash between green and red
    var flash_color;
    if (floor(global.health) mod 2 == 0) {
        flash_color = c_green;
    } else {
        flash_color = c_red;
    }
    draw_set_color(flash_color);
} else {
    // Normal color when health is above 30
    draw_set_color(c_green);
}
draw_text(100, 90, "Health: " + string(global.health));

// Draw Battery HUD
draw_set_color(c_yellow);
draw_text(100, 120, "Battery: " + string(global.batteryTotal));

// Reset color to default
draw_set_color(c_white);



var current_room = room_get_name(room);
var room_title = ds_map_find_value(room_titles, current_room);

draw_text_transformed_color(
    room_width / 2, 10,                // X, Y coordinates
    room_title,                         // Text to display (room title)
    2, 2,                           // X and Y scale factors
    0,                                  // Rotation angle (in degrees)
    c_yellow,                           // Main color
    c_yellow,                           // Outline color
    c_yellow,                           // Shadow color
    c_yellow,                           // Highlight color
    1                                 // Outline size
);