/// @description Init

vsp = 0;
grv = 0.15;

switch(global.playerSelection)
{
	case 0:
		sprite_index = sPlayerDeath;
		break;
	case 1:
		sprite_index = sPlayerBlueDeath;
		break;
	case 2:
		sprite_index = sPlayerYellowDeath;
		break;
	case 3:
		sprite_index = sPlayerPurpleDeath;
		break;
	case 4:
		sprite_index = sPlayerOrangeDeath;
		break;
	case 5:
		sprite_index = sPlayerGrayDeath;
		break;
}
