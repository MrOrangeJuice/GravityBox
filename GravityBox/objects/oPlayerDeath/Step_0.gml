/// Check for restart
if(keyboard_check_pressed(vk_space))
{
	audio_play_sound(snd_MenuSelect,5,false);
	Restart();
}