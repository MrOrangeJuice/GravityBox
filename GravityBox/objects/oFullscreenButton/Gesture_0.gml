/// @description Click

audio_play_sound(snd_MenuSelect,5,false);
if(global.fullscreen)
{
	window_set_fullscreen(false);	
	global.fullscreen = false;
}
else if(!global.fullscreen)
{
	window_set_fullscreen(true);	
	global.fullscreen = true;
}
Save();