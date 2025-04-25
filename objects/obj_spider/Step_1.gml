if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,obj_spider_death))
	{
		direction = other.hitfrom;
		hspd = lengthdir_x(3, direction)
		vspd = lengthdir_y(3,direction)-2
		if (sign(hspd) != 0) image_xscale = sign (hspd);
	}
	instance_destroy();
}
