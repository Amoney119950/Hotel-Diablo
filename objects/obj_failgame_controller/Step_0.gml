if room == rm_fail {
    // Find the game controller instance
    var game_controller = instance_find(obj_game_controller, 0);
    
    // If the game controller instance is found
    if game_controller != noone {
        // Delete the game controller instance
        instance_destroy(game_controller);
    }
}