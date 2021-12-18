/// @description Apply Physics

// Get inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));

key_gravleft = keyboard_check_pressed(vk_left);
key_gravright = keyboard_check_pressed(vk_right);
key_gravdown = keyboard_check_pressed(vk_down);
key_gravup = keyboard_check_pressed(vk_up);

if(key_gravleft) gravityDir = "left";
if(key_gravright) gravityDir = "right";
if(key_gravdown) gravityDir = "down";
if(key_gravup) gravityDir = "up";

switch(gravityDir)
{
	case "down":
		// Calculate movement	
		var move = key_right - key_left;
		if( hsp > 0.25) hsp -= 0.1;
		else if (hsp < -0.25) hsp += 0.1;
		else hsp = 0;
		//hsp = move * walksp;
		vsp = vsp + grv;
		break;
	case "up":
		// Calculate movement	
		var move = key_right - key_left;
		if( hsp > 0.25) hsp -= 0.1;
		else if (hsp < -0.25) hsp += 0.1;
		else hsp = 0;
		vsp = vsp - grv;
		break;
	case "right":
		// Calculate movement	
		var move = key_down - key_up;
		if( vsp > 0.25) vsp -= 0.1;
		else if (vsp < -0.25) vsp += 0.1;
		else vsp = 0;
		hsp = hsp + grv;
		break;
	case "left":
		// Calculate movement	
		var move = key_down - key_up;
		if( vsp > 0.25) vsp -= 0.1;
		else if (vsp < -0.25) vsp += 0.1;
		else vsp = 0;
		hsp = hsp - grv;
		break;
}

// Clamp speed
if(hsp > maxhsp) hsp = maxhsp;
if(hsp < -maxhsp) hsp = -maxhsp;
if(vsp > maxvsp) vsp = maxvsp;
if(vsp < -maxvsp) vsp = -maxvsp;


// x collision
if(place_meeting(x + hsp, y, oWall)){
	while(!place_meeting(x + sign(hsp), y, oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;
		
// y collision
if (place_meeting(x,y+vsp,oWall)){
	while (!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;