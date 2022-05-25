/// @description Init
// Set Random Direction
direction = random_range(0, 360);
// Set speed
speed = 1; 

// Set sprite if player is suing inverse skin
if(global.playerSelection == 8)
{
	sprite_index = sEnemyPlayer;	
}
