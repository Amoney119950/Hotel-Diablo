// Draw game instructions with proper formatting
var text_x = room_width / 3; // X-coordinate for text
var text_y = 280; // Adjusted Y-coordinate for text
var text_scale_x = 1; // X-scale for text
var text_scale_y = 1; // Y-scale for text
var text_rotation = 0; // Rotation angle (in degrees) for text
var main_color = c_yellow; // Main color of the text
var outline_size = .5; // Outline size of the text

// Text alignment
draw_set_halign(fa_left);

// Outline color set to black for better contrast
var outline_color = c_black;

// Game instructions
var instructions = "Controller Instructions:\n" +
                   "A - Move left\n" +
                   "D - Move right\n" +
                   "Spacebar - Jump\n" +
                   "M - Main Menu at the door\n" +
                   "Throughout the level,\nthere will be tips to help you.";

// Draw the instructions
draw_text_transformed_color(
    text_x, text_y,
    instructions,
    text_scale_x, text_scale_y,
    text_rotation,
    main_color, // Main color
    outline_color, // Outline color
    main_color, // Shadow color
    main_color, // Highlight color
    outline_size // Outline size
);

// Debug message
show_debug_message("Drawing instructions");
