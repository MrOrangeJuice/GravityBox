/// @description Init

image_speed = 0;
soundPlayed = false;

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
}

vsp = 0;
grv = 0.15;