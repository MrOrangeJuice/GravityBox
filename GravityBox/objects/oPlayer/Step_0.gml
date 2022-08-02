/// @description Apply Physics

// Get inputs
key_gravleft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
key_gravright = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
key_gravdown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
key_gravup = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

if (key_gravleft || key_gravright || key_gravdown || key_gravdown)
{
	global.controller = 0;	
}

if (gamepad_axis_value(0,gp_axislh) < -0.4 || gamepad_button_check(0,gp_padl) || gamepad_axis_value(4,gp_axislh) < -0.4 || gamepad_button_check(4,gp_padl))
{
	key_gravleft = 1;
	global.controller = 1;
	global.mouse = 0;
}

if (gamepad_axis_value(0,gp_axislh) > 0.4 || gamepad_button_check(0,gp_padr) || gamepad_axis_value(4,gp_axislh) > 0.4 || gamepad_button_check(4,gp_padr))
{
	key_gravright = 1;
	global.controller = 1;
	global.mouse = 0;
}

if (gamepad_axis_value(0,gp_axislv) > 0.4 || gamepad_button_check(0,gp_padd) || gamepad_axis_value(4,gp_axislv) > 0.4 || gamepad_button_check(4,gp_padd))
{
	key_gravdown = 1;
	global.controller = 1;
	global.mouse = 0;
}

if (gamepad_axis_value(0,gp_axislv) < -0.4 || gamepad_button_check(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.4 || gamepad_button_check(4,gp_padu))
{
	key_gravup = 1;
	global.controller = 1;
	global.mouse = 0;
}

if(key_gravleft) gravityDir = "left";
if(key_gravright) gravityDir = "right";
if(key_gravdown) gravityDir = "down";
if(key_gravup) gravityDir = "up";

if(!global.paused)
{
	switch(gravityDir)
	{
		case "down":
			image_index = 0;
			// Calculate movement	
			if( hsp > 0.25) hsp -= 0.1;
			else if (hsp < -0.25) hsp += 0.1;
			else hsp = 0;
			vsp = vsp + grv;
			break;
		case "up":
			image_index = 1;
			// Calculate movement	
			if( hsp > 0.25) hsp -= 0.1;
			else if (hsp < -0.25) hsp += 0.1;
			else hsp = 0;
			vsp = vsp - grv;
			break;
		case "right":
			image_index = 3;
			// Calculate movement
			if( vsp > 0.25) vsp -= 0.1;
			else if (vsp < -0.25) vsp += 0.1;
			else vsp = 0;
			hsp = hsp + grv;
			break;
		case "left":
			image_index = 2;
			// Calculate movement	
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
}

// Animation for Gerald
if(global.playerSelection == 14)
{
	if(gravityDir == "down" && place_meeting(x,y+1,oWall))
	{
		image_index = 4;	
	}
	else if(gravityDir == "up" && place_meeting(x,y-1,oWall))
	{
		image_index = 4;	
	}
	else if(gravityDir == "left" && place_meeting(x-1,y,oWall))
	{
		image_index = 4;	
	}
	else if(gravityDir == "right" && place_meeting(x+1,y,oWall))
	{
		image_index = 4;	
	}
}