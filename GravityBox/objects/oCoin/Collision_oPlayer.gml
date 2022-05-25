/// @description Collide with player
global.score += 10 * global.prevCoinValue;
global.coins += global.prevCoinValue;
// Increment high score if necessary
if(global.highScore < global.score)
{
	global.highScore = global.score;
}
switch(global.prevCoinValue)
{
	case 1:
		audio_play_sound(snd_Coin,5,false);
		break;
	case 2:
		audio_play_sound(snd_Coin2,5,false);
		break;
	case 3:
		audio_play_sound(snd_Coin3,5,false);
		break;
}
instance_create_layer(random_range(120,360),random_range(24,246),"Coins",oCoin);
instance_create_layer(x,y,"Coins",oCoinVFX);
newCoinRand = random_range(0,200);
newCoinRand += global.score;
newCoinValue = 1;
if(newCoinRand > 300)
{
	newCoinValue = 3;
}
else if(newCoinRand > 200)
{
	newCoinValue = 2;	
}
else
{
	newCoinValue = 1;	
}
global.prevCoinValue = global.coinValue;
global.coinValue = newCoinValue;
instance_destroy();