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
	case 6:
		sprite_index = sPlayerCitrusDeath;
		break;
	case 7:
		sprite_index = sPlayerFernDeath;
		break;
	case 8:
		sprite_index = sPlayerHeartDeath;
		break;
	case 9:
		sprite_index = sPlayerGameBoyDeath;
		break;
	case 10:
		sprite_index = sPlayer2Death;
		break;
	case 11:
		sprite_index = sPlayerInverseDeath;
		break;
}
