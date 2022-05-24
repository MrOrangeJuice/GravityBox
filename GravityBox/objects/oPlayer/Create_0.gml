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
}
