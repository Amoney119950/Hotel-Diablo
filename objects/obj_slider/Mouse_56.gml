/// @description 

is_being_dragged = false;

switch(setting) {
	case "music":
		global.music_volume = amount_current;
		
		audio_group_set_gain(audiogroup_default, amount_current / 100, 0);
	break;
	case "sound":
		global.sound_volume = amount_current;
		
		audio_group_set_gain(audioground_sfx, amount_current / 100, 0);
	break;
}