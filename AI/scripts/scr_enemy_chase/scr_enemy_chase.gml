/// scr_enemy_chase()
state_text = "chase";
var dis = point_distance(x, y, o_player.x, o_player.y);
var dir = point_direction(x, y, o_player.x, o_player.y);

if (dis <= sight_range && dis > attack_range)
{
	motion_set(dir, spd);
}
else if (dis <= attack_range)
{
	speed = 0;
	direction = 0;
	state = scr_enemy_attack;
}
else
{
	speed = 0;
	direction = 0;
	state = scr_enemy_idle;
}