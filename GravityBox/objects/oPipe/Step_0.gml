/// @description Dev Add Coins

if(keyboard_check_pressed(vk_backspace))
{
	global.coins += 10;
	Save();
}
