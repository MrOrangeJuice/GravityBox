/// @description Move

if(xOffset <= 128 && !goingBack)
{
	xOffset += 8;
}
if(xOffset >= 128 && !goingBack && !arrived)
{
	alarm[0] = room_speed * 2;	
	arrived = true;
}

if(xOffset >= 0 && goingBack)
{
	xOffset -= 8;	
}

if(xOffset < 0 && goingBack)
{
	instance_destroy();	
}
