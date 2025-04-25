
with (obj_player)
{
	if (hascontrol)
	{
		//hascontrol = false
		SlideTransition(TRANS_MODE.GOTO,other.targetRoom)
	}
}


obj_player.x=targetX;
obj_player.y=targetY;
room_goto(targetRoom);
