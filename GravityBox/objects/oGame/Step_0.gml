/// @description Increment Time

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
