/// @description Change sprite depending on coin value

switch(global.prevCoinValue)
{
	case 1:
		sprite_index = sCoinNewVFX;
		break;
	case 2:
		sprite_index = sCoin2NewVFX;
		break;
	case 3:
		sprite_index = sCoin3NewVFX;
		break;
}
