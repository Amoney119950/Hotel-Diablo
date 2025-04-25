
if (hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	key_jump = keyboard_check_pressed(vk_space)

	if (key_left) or (key_right) or (key_jump)
	{
		controller = 0
	}

	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
		key_left = abs (min(gamepad_axis_value(0,gp_axislh),0))
		key_right = max(gamepad_axis_value(0,gp_axislh),0)
		controller = 1
	}

	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 1
		controller = 1
	}
}
else
{
	key_right = 0
	key_left = 0
	key_jump = 0
}
var move = key_right - key_left

hsp = move * walkspeed
vsp = vsp + grv

if (place_meeting(x,y+1,obj_floor)) && (key_jump)
{
	vsp = -7
}


if (place_meeting(x+hsp,y,obj_floor))
{
	while (!place_meeting(x+sign(hsp),y,obj_floor))
	{
		x = x + sign(hsp)
	}
	hsp = 0
}
x = x + hsp

if (place_meeting(x,y+vsp,obj_floor))
{
	while (!place_meeting(x,y+sign(vsp),obj_floor))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (!place_meeting(x,y+1,obj_floor))
{
	sprite_index = spr_player_air
	image_speed = 0
	if (sign(vsp) >0) image_index =1; else image_index = 0
}
else
{
	if (sprite_index == spr_player_air) 
	{
		audio_sound_pitch(sfx_landing,choose(0.8,1.0,1.2))
		audio_play_sound(sfx_landing,4,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullets",obj_Dust))
			{
				vsp = 0
			}
		}
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player
	}
	else
	{
		sprite_index = spr_player_running
	}
}
if (hsp != 0) image_xscale = sign(hsp)


// Slow Movement on Blood
if(place_meeting(x,y,obj_blood))
{
	walkspeed = 1
}
else
{
	walkspeed = 4
}

// Climb funciton
if(place_meeting(x,y,obj_ladder))
{
	vsp = -2
}

if (health <= 0)
{
    obj_game_controller.game_state = -1;

    // Check if obj_snake_parent exists before modifying its state
    if (instance_exists(obj_snake_parent))
    {
        obj_snake_parent.state = e_state.none;
    }

    // Check if obj_spider_parent exists before modifying its state
    if (instance_exists(obj_spider_parent))
    {
        obj_spider_parent.state = e_state.none;
    }

    // Check if obj_gun exists before destroying it
    if (instance_exists(obj_gun))
    {
        instance_destroy(obj_gun);
    }

    // Check if the player object itself exists before destroying it
    if (instance_exists(self))
    {
        instance_destroy(self);
    }

    game_state = -1;
}

// Invisible Wall
if(x <= 32) x = 32;
if(x >= room_width - 32) x = room_width - 32;
if(y <= 32) y = 32;
if(y >= room_height - 32) x = room_height - 32;

// Step Event for obj_player
if (push_timer > 0) {
    push_timer--;
} else {
    // Reset player's speed to zero after timer expires
    hspeed = 0;
}