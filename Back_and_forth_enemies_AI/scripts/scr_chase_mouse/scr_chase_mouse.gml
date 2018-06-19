/// scr_chase_mouse()
if (point_distance(x, y, mouse_x, y) > 16)
{
	if (x < mouse_x)
	{
		hspd = 4;
	}
	else
	{
		hspd = -4;
	}
}
else
{
	hspd = 0;
}

// Set up check variables
var on_ground = place_meeting(x, y + 1, o_solid);
var mouse_above = (mouse_y < y);
var wall = place_meeting(x + hspd, y, o_solid);
var xpos = x + sign(hspd);
var ypos = y + (sprite_height / 2) + 1;
var ledge = !instance_position(xpos, ypos, o_solid);

// Check for jump
if (on_ground && mouse_above && (wall || ledge))
{
	vspd = -jspd;
}