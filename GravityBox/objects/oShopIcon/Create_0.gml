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
}
