/// @description Init

image_speed = 0;
soundPlayed = false;

if(window_get_fullscreen())
{
	sprite_index = sFullscreenOnButton;	
}
else
{
	sprite_index = sFullscreenOffButton;	
}
