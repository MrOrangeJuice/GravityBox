/// @description Increase speed
if(!global.paused)
{
	if (global.alive) currentSpeed += 0.001;
	speed = currentSpeed;
	move_bounce_solid(0);
}
else
{
	speed = 0;	
}