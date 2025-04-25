x = obj_player.x;
y = obj_player.y + 30;

if (obj_player.controller == 0) // Mouse control
{
    image_angle = point_direction(x, y, mouse_x, mouse_y);
}
else // Gamepad control
{
    var controllerh = gamepad_axis_value(0, gp_axislh);
    var controllerv = gamepad_axis_value(0, gp_axislv);
    
    if (abs(controllerh) > 0.2 || abs(controllerv) > 0.2)
    {
        image_angle = point_direction(0, 0, controllerh, controllerv);
    }
}

// Fire Delay
fireingdelay = max(0, fireingdelay - 1);
recoil = max(0, recoil - 1);

if ((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)) && fireingdelay <= 0)
{
    recoil = 4;
    fireingdelay = 0.5 * room_speed;
    
    audio_sound_pitch(sfx_gun_fire, choose(0.8, 1.0, 1.2));
    audio_play_sound(sfx_gun_fire, 5, false);
    
    with (instance_create_layer(x, y - 8, "Bullets", obj_bullet))
    {
        speed = 25;
        direction = other.image_angle + random_range(-3, 3);
        image_angle = direction;
    }
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if (image_angle > 90 && image_angle < 270)
{
    image_yscale = -1;
}
else
{
    image_yscale = 1;
}
