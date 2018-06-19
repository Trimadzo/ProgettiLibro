/// scr_enemy_idle()
state_text = "idle";
var dis = point_distance(x, y, o_player.x, o_player.y);
if (dis <= sight_range)
{
	state = scr_enemy_chase;
}