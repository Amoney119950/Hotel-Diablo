if(global.health < 100)
{
global.health = global.health + 10
instance_destroy();
}
if(global.health >= 100)
{
	global.health = 100
}
else
instance_destroy();