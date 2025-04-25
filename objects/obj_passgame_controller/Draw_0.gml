
// Draw remaining game time
/*draw_text_transformed_color(
    room_width / 2, 200,                 // X, Y coordinates
    "Game Time Left: " + string(global.game_time),   // Text to display
    1.5, 1.5,                            // X and Y scale factors
    0,                                   // Rotation angle (in degrees)
    c_yellow,                            // Main color
    c_yellow,                            // Outline color
    c_yellow,                            // Shadow color
    c_yellow,                            // Highlight color
    2                                    // Outline size
);
*/
// Draw remaining health
draw_text_transformed_color(
    room_width / 2, 200,                 // X, Y coordinates
    "Health: " + string(global.health),  // Text to display
    1.5, 1.5,                            // X and Y scale factors
    0,                                   // Rotation angle (in degrees)
    c_yellow,                            // Main color
    c_yellow,                            // Outline color
    c_yellow,                            // Shadow color
    c_yellow,                            // Highlight color
    2                                    // Outline size
);

// Draw remaining battery level
draw_text_transformed_color(
    room_width / 2, 250,                 // X, Y coordinates
    "Battery: " + string(global.batteryTotal), // Text to display
    1.5, 1.5,                            // X and Y scale factors
    0,                                   // Rotation angle (in degrees)
    c_yellow,                            // Main color
    c_yellow,                            // Outline color
    c_yellow,                            // Shadow color
    c_yellow,                            // Highlight color
    2                                    // Outline size
);

// Get current room and room title
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