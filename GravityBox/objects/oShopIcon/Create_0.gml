/// @description Init

image_speed = 0;
soundPlayed = false;

// Pick sprite based on shop number
switch(selectionNum)
{
	case 0:
		sprite_index = sPlayerGreenIcon;
		break;
	case 1:
		sprite_index = sPlayerBlueIcon;
		break;
	case 2:
		sprite_index = sPlayerYellowIcon;
		break;
	case 3:
		sprite_index = sPlayerPurpleIcon;
		break;
	case 4:
		sprite_index = sPlayerOrangeIcon;
		break;
	case 5:
		sprite_index = sPlayerGrayIcon;
		break;
	case 6:
		sprite_index = sPlayerCitrusIcon;
		break;
	case 7:
		sprite_index = sPlayerFernIcon;
		break;
	case 8:
		sprite_index = sPlayerHeartIcon;
		break;
	case 9:
		sprite_index = sPlayerGameBoyIcon;
		break;
	case 10:
		sprite_index = sPlayer2Icon;
		break;
	case 11:
		sprite_index = sPlayerInverseIcon;
		break;
}
