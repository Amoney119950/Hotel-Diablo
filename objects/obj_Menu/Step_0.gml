// Something with menu and hascontrol variable is causing teleportation glitch

menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+200
		menu_committed = menu_cursor;
		menu_control = false;
		audio_play_sound(sfx_gun_fire,5,false)
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if (mouse_y_gui < menu_y) && ( mouse_y_gui > menu_top) 
	{
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5)
		
		if (mouse_check_button_pressed(mb_left))
		{
		menu_x_target = gui_width+200
		menu_committed = menu_cursor;
		menu_control = false;
		}
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 3: SlideTransition(room_goto(rm_alone)); break;
		case 2: SlideTransition(room_goto(rm_control)); break;
		case 1: SlideTransition(room_goto(rm_settings)); break;
		case 0: game_end(); break;
	}
}