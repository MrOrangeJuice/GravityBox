/// @description Spawn death object

audio_play_sound(snd_Death,5,false);
instance_create_layer(x,y,"Instances",oPlayerDeath);
instance_create_layer(x,y,"Instances",oPlayerDeathSprite);
instance_destroy();