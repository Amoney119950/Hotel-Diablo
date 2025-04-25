if (done == 0)
{
    vsp = vsp + grav;

    // Horizontal Collision
    if (place_meeting(x + hsp, y, obj_floor))
    {
        while (!place_meeting(x + sign(hsp), y, obj_floor))
        {
            x = x + sign(hsp);
        }
        hsp = 0;
    }
    // Vertical Collision
    if (place_meeting(x, y + vsp, obj_floor))
    {
        if (vsp > 0) 
        {
            done = 10;
            image_index = 10;
        }
        while (!place_meeting(x, y + sign(vsp), obj_floor))
        {
            y = y + sign(vsp);
        }
        vsp = 0;
    }

    y = y + hsp;
    
    // Check if the death animation has played at least once
    if (done == 10 && image_index >= 10)
    {
        instance_destroy();
    }
}
