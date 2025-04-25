// Transition Screen
if(mode != TRANS_MODE.OFF)
{
	if(mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.005));
	}
	else
	{
		percent = min(1,percent + max(((1 - percent)/10),0.005));
	}
	
	if((percent == 1) || (percent ==0))
	{
		switch(mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(targetRoom);
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(targetRoom);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}

// Door Conditions
if(condition == 1) // 30 sec timer
{
	
	if(obj_game_controller.seconds >= 30)
	{
		doorOpen = true
	}
	else
	{
		doorOpen = false
	}
	
	if(doorOpen)
	{
		targetRoom= rm_snakes
		targetX = 174
		targetY = 139
	}
	else
	{
		targetRoom = rm_alone
	}

}

if(condition == 2) // snakes
{
	
	if(obj_game_controller.seconds >= 15)
	{
		doorOpen = true
	}
	else
	{
		doorOpen = false
	}
	
	if(doorOpen)
	{
		targetRoom= rm_spiders
		targetX = 181
		targetY = 339
	}
	else
	{
		targetRoom = rm_spiders
	}

}

if(condition == 3) // spiders
{
	
	if(obj_game_controller.seconds >= 15)
	{
		doorOpen = true
	}
	else
	{
		doorOpen = false
	}
	
	if(doorOpen)
	{
		targetRoom= rm_blood
		targetX = 158
		targetY = 1134
	}
	else
	{
		targetRoom = rm_blood
	}

}

if(condition == 4) // blood
{
	
	if(obj_game_controller.seconds >= 15)
	{
		doorOpen = true
	}
	else
	{
		doorOpen = false
	}
	
	if(doorOpen)
	{
		targetRoom= rm_darkness
		targetX = 119
		targetY = 1211
	}
	else
	{
		targetRoom = rm_darkness
	}

}

if(condition == 5) // darkness
{
	
	if(obj_game_controller.seconds >= 15)
	{
		doorOpen = true
	}
	else
	{
		doorOpen = false
	}
	
	if(doorOpen)
	{
		targetRoom= rm_height
		targetX = 244
		targetY = 2444
	}
	else
	{
		targetRoom = rm_height
	}

}

if(condition == 6) // hieght
{
	
	if(obj_game_controller.seconds >= 15)
	{
		doorOpen = true
	}
	else
	{
		doorOpen = false
	}
	
	if(doorOpen)
	{
		targetRoom= rm_finish
		targetX = 512
		targetY = 698
	}
	else
	{
		targetRoom = rm_finish
	}

}