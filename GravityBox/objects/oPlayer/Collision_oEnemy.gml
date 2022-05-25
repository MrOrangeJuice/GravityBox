/// @description Spawn death object

if(global.playerSelection == 7)
{
	audio_play_sound(snd_FernDeath,5,false);
}
else
{
	audio_play_sound(snd_Death,5,false);	
}
instance_create_layer(x,y,"Instances",oPlayerDeath);
instance_create_layer(x,y,"Instances",oPlayerDeathSprite);
instance_destroy();