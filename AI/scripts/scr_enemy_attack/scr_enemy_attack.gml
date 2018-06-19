/// scr_enemy_attack()
state_text = "attack";
var dis = point_distance(x, y, o_player.x, o_player.y);

if (dis > attack_range)
{
	state = scr_enemy_chase();
}
else
{
	// Attack
	if (alarm[0] == -1)
	{
		o_player.hp -= 0.1;
		alarm[0] = 30;
	}
}
