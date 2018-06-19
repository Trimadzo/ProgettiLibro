/// Control the state and collisions
script_execute(state);

// Gravity
if (!place_meeting(x, y + 1, o_solid))
{
	vspd += grav;
}

// Horizontal collisions
if (place_meeting(x + hspd, y, o_solid))
{
	hspd = 0;
}

// Move horizontally
x += hspd;

// Vertical collisions
if (place_meeting(x, y + vspd, o_solid))
{
	while (!place_meeting(x, y + sign(vspd), o_solid))
	{
		y += sign(vspd);
	}
	vspd = 0;
}

// Move vertically
y += vspd;