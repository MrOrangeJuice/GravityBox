/// @description Insert description here
// You can write your code in this editor

if(room == rGame)
{
	// Left UI
	draw_text(56,16,"Time:");
	timeString = string_format((global.time / room_speed), 0, 2);
	draw_text(56,32,timeString);
	draw_text(56,80,"Coins:");
	draw_text(56,96,global.coins);

	// Right UI
	draw_text(424,16,"Score:");
	draw_text(424,32,global.score);
	draw_text(424,80,"Record:");
	draw_text(424,96,global.highScore);
}

// Draw Cursor
if(global.mouse) draw_sprite(sCursor,0,global.mouseX,global.mouseY);
