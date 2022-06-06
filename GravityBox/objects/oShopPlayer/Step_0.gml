/// @description Move

switch(playerNum)
{
	case 0:
		sprite_index = sPlayer;
		break;
	case 1:
		sprite_index = sPlayerBlue;
		break;
	case 2:
		sprite_index = sPlayerYellow;
		break;
	case 3:
		sprite_index = sPlayerPurple;
		break;
	case 4:
		sprite_index = sPlayerOrange;
		break;
	case 5:
		sprite_index = sPlayerGray;
		break;
	case 6:
		sprite_index = sPlayerCitrus;
		break;
	case 7:
		sprite_index = sPlayerFern;
		break;
	case 8:
		sprite_index = sPlayerHeart;
		break;
	case 9:
		sprite_index = sPlayerGameBoy;
		break;
	case 10:
		sprite_index = sPlayer2;
		break;
	case 11:
		sprite_index = sPlayerInverse;
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
