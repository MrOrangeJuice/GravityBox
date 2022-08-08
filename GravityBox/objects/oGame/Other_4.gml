/// @description Restart on room entry

if(room == rGame) 
{	
	if(global.music) audio_play_sound(msc_Pattlebaddle,5,true);
	audio_stop_sound(msc_Shop);
	audio_stop_sound(msc_Title);
	draw_set_color(c_white);
	Restart();
}
else if(room == rShop)
{
	audio_stop_sound(msc_Pattlebaddle);	
	audio_stop_sound(msc_Title);	
	if(global.music) audio_play_sound(msc_Shop,5,true);
}
else if(room == rOptions)
{
	audio_stop_sound(msc_Pattlebaddle);	
	audio_stop_sound(msc_Title);	
	if(global.music) audio_play_sound(msc_Shop,5,true);
}
else if(room == rTitle)
{
	audio_stop_sound(msc_Pattlebaddle);	
	audio_stop_sound(msc_Shop);	
	if(global.music) audio_play_sound(msc_Title,5,true);
	// Easter Title Easter Egg
	global.clickCount = 0;
}

global.easterScore = 0;