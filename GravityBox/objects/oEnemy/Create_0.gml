/// @description Init
// Set Random Direction
direction = random_range(0, 360);
// Set speed
currentSpeed = 1; 

// Set sprite if player is using inverse skin
if(global.playerSelection == 11)
{
	sprite_index = sEnemyPlayer;	
}
