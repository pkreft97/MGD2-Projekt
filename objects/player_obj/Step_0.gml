//Player Input
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));


//Movement and Sprint
var moveH = key_right - key_left;   //moveH = -1 nach links, 0 wenn still, +1 nach rechts 
var moveV = key_down - key_up;		//moveV = -1 nach oben, 0 wenn still, +1 nach unten

h_speed = moveH * walk_speed;
v_speed = moveV * walk_speed;

if (keyboard_check(vk_lshift))
{
	h_speed *= sprint_speed;
	v_speed *= sprint_speed;
}
	

//Horizontal Collision
if (place_meeting(x + h_speed, y, wall_obj))
{
	while(!place_meeting(x + sign(h_speed), y, wall_obj))
	{
		x = x + sign(h_speed);
	}
	h_speed = 0;
}
x = x + h_speed;

//Vertical Collision
if (place_meeting(x, y + v_speed, wall_obj))
{
	while(!place_meeting(x, y + sign(v_speed), wall_obj))
	{
		y = y + sign(v_speed);
	}
	v_speed = 0;
}
y = y + v_speed;


//Animation
if (moveV == 0 && moveH == 0)
{
	image_index = 0;
	image_speed = 0;
} else image_speed = 1; 

//Vertical Animation
if (moveV > 0) sprite_index = playerDown_spr;
else if (moveV < 0) sprite_index = playerUp_spr;

//Horizontal Animation
if (moveH > 0) sprite_index = playerRight_spr;
else if(moveH < 0) sprite_index = playerLeft_spr;