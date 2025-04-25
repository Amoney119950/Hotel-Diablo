if (done == 0)
{
    vspd = vspd + grav;

    // Horizontal Collision
    if (place_meeting(x + hspd, y, obj_floor))
    {
        while (!place_meeting(x + sign(hspd), y, obj_floor))
        {
            x = x + sign(hspd);
        }
        hspd = 0;
    }
    // Vertical Collision
    if (place_meeting(x, y + vspd, obj_floor))
    {
        if (vspd > 0)
        {
            done = 6;
            image_index = 6;
            // Set alarm to 1 second
            alarm[0] = room_speed; // room_speed is the number of steps per second
        }
        while (!place_meeting(x, y + sign(vspd), obj_floor))
        {
            y = y + sign(vspd);
        }
        vspd = 0;
    }

    y = y + hspd;
}

// Alarm event
if (alarm[0] > 0)
{
    alarm[0] -= 1;
}
else
{
    instance_destroy();
}
