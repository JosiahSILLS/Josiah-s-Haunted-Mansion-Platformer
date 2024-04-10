/// @description Core Player Logic

//Get Player Inputs Here
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movements
var _move = key_right - key_left;

hsp = _move * walksp;

vsp += grv

//jump
if (place_meeting(x,y+1,oWall)){
	currjumps = 0;
}

if (key_jump &&(currjumps < maxjumps)){
	vsp = jumpsp;
	currjumps += 1;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)){
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y + vsp,oWall))
{
	while!place_meeting(x,y + sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
x = y + vsp;

//Animation
if (!place_meeting(x,y+1, oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else{
		sprite_index = sPlayer;
	}
}

if (hsp != 0) image_xscale = sin(hsp);


