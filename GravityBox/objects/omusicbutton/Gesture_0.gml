/// @description Click

audio_play_sound(snd_MenuSelect,5,false);
if(global.music)
{
	global.music = false;
	audio_stop_sound(msc_Shop);
	audio_stop_sound(msc_Pattlebaddle);
	audio_stop_sound(msc_Title);
}
else if(!global.music)
{
	global.music = true;
	if(global.music) audio_play_sound(msc_Shop,5,true);
}
Save();