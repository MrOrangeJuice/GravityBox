/// @description Move

if(xOffset <= 128 && !goingBack)
{
	xOffset += 2;
}
if(xOffset >= 128 && !goingBack)
{
	alarm[0] = 2 * room_speed;	
}
if(xOffset >= 0 && goingBack)
{
	xOffset -= 2;	
}
