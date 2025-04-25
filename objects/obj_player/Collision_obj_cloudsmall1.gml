if (place_meeting(x, y, obj_player)) {
    // Push the player back
    with (instance_place(x, y, obj_player)) {
        x += other.direction * 2; // Adjust the pushback distance as needed
    }
}