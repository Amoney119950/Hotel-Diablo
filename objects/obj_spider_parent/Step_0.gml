vspd = vspd + grav

//Horizontal Collision
if (place_meeting(x+hspd,y,obj_floor))
{
	while (!place_meeting(x+sign(hspd),y,obj_floor))
	{
		x = x + sign(hspd)
	}
	hspd = 0;
}

x = x + hspd

//Vertical Collision
if (place_meeting(x,y+vspd,obj_floor))
{
	while (!place_meeting(x,y+sign(vspd),obj_floor))
	{
		y = y + sign(vspd)
	}
	vspd = 0;
}

y = y + vspd

// Animation
if (!place_meeting(x,y+1,obj_floor))
{
	sprite_index = spr_spider_down
	image_speed = 0
}
else
{
	image_speed = 1;
	if (hspd == 0)
	{
		sprite_index = spr_spider_down
	}
	else
	{
		sprite_index = spr_spider_left
	}
}

if (hspd !=0) image_xscale = sign(hspd)

// Enemy AI
switch(state)
{
	case e_state.idle:
	{
		hspd = 0;
		vspd = (min(7,vspd + 0.05));
		if(distance_to_object(obj_player) < 100) state = e_state.chase;
	}
	break;
	
	case e_state.chase:
	{
		dir = sign(obj_player.x - x);
		hspd = dir * 2;
		vspd = (min(7, vspd + 0.05));
		if(distance_to_object(obj_player) > 150) state = e_state.idle;
	}
	break;
}