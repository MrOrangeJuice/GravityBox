/// @description Drop

if(!click)
{
	click = true;
	global.clickCount++;
	CheckForAchievements();
	audio_play_sound(snd_Letter,5,false);
	vsp = -4;
}
else
{
	audio_play_sound(snd_Letter,5,false);
	vsp = -4;
}