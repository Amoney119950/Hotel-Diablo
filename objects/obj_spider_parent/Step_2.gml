if (hp <= 0)
{
    // Create obj_spider_death instance
    var death_instance = instance_create_layer(x, y, layer, obj_spider_death);
    
    // Set direction, hspd, and vspd for the death instance
    with (death_instance)
    {
        direction = other.hitfrom;
        hspd = lengthdir_x(3, direction);
        vspd = lengthdir_y(3, direction) - 2;
    }
    
    // Set alarm to 1 second (assuming room_speed is set to 30)
    alarm[0] = room_speed;
	instance_destroy();
}
