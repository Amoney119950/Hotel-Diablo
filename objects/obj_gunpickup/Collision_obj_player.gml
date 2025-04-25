// Collision Event between obj_gunpickup and obj_player
// This event creates an instance of obj_gun at the position of obj_player when they collide
if (instance_exists(obj_player) && (obj_player.key_jump != 1)) {
    var new_gun = instance_create_layer(obj_player.x, obj_player.y - 5, "Gun", obj_gun);
    // Additional code for initializing the new_gun instance if needed
}
// Destroy the obj_gunpickup instance without affecting its position
instance_destroy();
