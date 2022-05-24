/// @description Move

switch(playerNum)
{
	case 0:
		sprite_index = sPlayer;
		break;
	case 1:
		sprite_index = sPlayerBlue;
		break;
}

// Apply graivty
vsp += grv;

// y collision
if (place_meeting(x,y+vsp,oWall))
{
	if(!soundPlayed) 
	{
		audio_play_sound(snd_Land,5,false);
		soundPlayed = true;
	}
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;
