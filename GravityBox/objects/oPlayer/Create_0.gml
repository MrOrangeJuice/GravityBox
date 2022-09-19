/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
hsp = 0;
vsp = 0;
grv = 0.15;
maxhsp = 5;
maxvsp = 5;
//walksp = 2;
gravityDir = "down";
randomize(); // Set new random seed

// Swap sprite
switch(global.playerSelection)
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
	case 12:
		sprite_index = sPlayerGroovy;
		break;
	case 13:
		sprite_index = sPlayerDog;
		break;
	case 14:
		sprite_index = sPlayerGerald;
		break;
	case 15:
		sprite_index = sPlayerCrown;
		break;
	case 16:
		sprite_index = sPlayerRobot;
		break;
	case 17:
		sprite_index = sPlayerMystery;
		break;
}
