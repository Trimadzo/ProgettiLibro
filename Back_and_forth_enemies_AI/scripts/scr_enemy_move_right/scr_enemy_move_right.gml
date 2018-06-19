/// scr_enemy_move_right()
var right_free = !place_meeting(x + 2, y, o_solid);
var xpos = x + (sprite_width/2) + 1;
var ypos = y + (sprite_height/2) + 1;
var no_ledge = instance_position(xpos, ypos, o_solid);

if (right_free && no_ledge)
{
	x += 2;
}
else
{
	state = scr_enemy_move_left;
}