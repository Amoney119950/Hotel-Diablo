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
//Vertical Collision
if (place_meeting(x,y+vspd,obj_floor))
{
	while (!place_meeting(x,y+sign(vspd),obj_floor))
	{
		y = y + sign(vspd)
	}
	vspd = 0;
}

y = y + hspd

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