/// @description Collide with player
global.score++;
// Increment high score if necessary
if(global.highScore < global.score)
{
	global.highScore = global.score;
}
audio_play_sound(snd_Coin,5,false);
instance_create_layer(random_range(112,368),random_range(16,254),"Coins",oCoin);
instance_create_layer(x,y,"Coins",oCoinVFX);
instance_destroy();