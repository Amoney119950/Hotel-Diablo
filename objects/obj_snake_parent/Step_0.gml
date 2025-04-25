vsp = vsp + grav

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_floor))
{
	while (!place_meeting(x+sign(hsp),y,obj_floor))
	{
		x = x + sign(hsp)
	}
	hsp = 0;
	//hsp = -hsp;
}

x = x + hsp

//Vertical Collision
if (place_meeting(x,y+vsp,obj_floor))
{
	while (!place_meeting(x,y+sign(vsp),obj_floor))
	{
		y = y + sign(vsp)
	}
	vsp = 0;
}

y = y + vsp

// Animation
if (!place_meeting(x,y+1,obj_floor))
{
	sprite_index = spr_snake_idle
	image_speed = 0
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_snake_idle
	}
	else
	{
		sprite_index = spr_snake_move
	}
}

if (hsp !=0) image_xscale = sign(hsp) * size
image_yscale = size

// Enemy AI
switch(state)
{
	case e_state.idle:
	{
		hsp = 0;
		vsp = (min(7,vsp + 0.05));
		if(distance_to_object(obj_player) < 100) state = e_state.chase;
	}
	break;
	
	case e_state.chase:
	{
		dir = sign(obj_player.x - x);
		hsp = dir * 2;
		vsp = (min(7, vsp + 0.05));
		
		if(distance_to_object(obj_player) > 150) state = e_state.idle;
	}
	break;
	/*
	case e_state.none:
		hsp = 0;
		vsp = 0;
	break;
	*/
}