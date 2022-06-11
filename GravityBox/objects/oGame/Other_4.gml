/// @description Restart on room entry

if(room == rGame) 
{	
	if(global.music) audio_play_sound(msc_Pattlebaddle,5,true);
	audio_stop_sound(msc_Shop);
	draw_set_color(c_white);
	Restart();
}
else if(room == rShop)
{
	audio_stop_sound(msc_Pattlebaddle);	
	if(global.music) audio_play_sound(msc_Shop,5,true);
}
else
{
	audio_stop_sound(msc_Pattlebaddle);	
	audio_stop_sound(msc_Shop);	
}