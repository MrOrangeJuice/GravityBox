/// @description Insert description here
// You can write your code in this editor

if(room == rGame)
{
	// Left UI
	draw_text(56,80,"Time:");
	timeString = string_format((global.time / room_speed), 0, 2);
	draw_text(56,96,timeString);
	draw_text(56,144,"Gems:");
	draw_text(56,160,global.coins);

	// Right UI
	draw_text(424,80,"Score:");
	draw_text(424,96,global.score);
	draw_text(424,144,"Record:");
	draw_text(424,160,global.highScore);
}
