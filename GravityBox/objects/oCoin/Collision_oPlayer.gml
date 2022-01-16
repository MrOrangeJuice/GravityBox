/// @description Collide with player
global.score++;
audio_play_sound(snd_Coin,5,false);
instance_create_layer(random_range(16,464),random_range(16,254),"Coins",oCoin);
instance_create_layer(x,y,"Coins",oCoinVFX);
instance_destroy();