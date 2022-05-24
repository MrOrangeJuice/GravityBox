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
}
