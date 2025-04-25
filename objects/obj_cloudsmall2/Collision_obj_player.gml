// Collision Event with obj_player in obj_cloud
var push_strength = 0.03; // Adjust this value for the desired push effect
var push_direction = point_direction(x, y, other.x, other.y); // Direction from cloud to player

// Apply push to the player
other.hspeed += lengthdir_x(push_strength, push_direction);

// Start a timer for 1 second (60 steps assuming 60 FPS)
other.push_timer = 60; // 60 steps = 1 second (adjust if your game runs at a different FPS)
