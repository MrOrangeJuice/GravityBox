/// @description Increment Time

if(room == rGame)
{
	if(global.alive) global.time++;

	// Increment score every second
	if(global.time % 60 == 0 && global.alive)
	{
		global.score++;	
	}

	// Increment high score if overtaken by score
	if(global.score > global.highScore)
	{
		global.highScore = global.score;	
	}	
}

// Turn mouse off if player inputs something
if(keyboard_check(vk_anykey))
{
	global.mouse = false;
}


if(prevMousePosX != mouse_x || prevMousePosY != mouse_y)
{
	global.mouse = true;
}

prevMousePosX = mouse_x;
prevMousePosY = mouse_y;
