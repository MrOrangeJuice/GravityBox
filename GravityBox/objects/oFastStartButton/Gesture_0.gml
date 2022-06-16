/// @description Click

audio_play_sound(snd_MenuSelect,5,false);
if(global.fastStart)
{
	global.fastStart = false;
}
else if(!global.fastStart)
{
	global.fastStart = true;
}
Save();