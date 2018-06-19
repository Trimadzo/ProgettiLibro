/// Find the mouse click and move towards it along a path
var mx = (mouse_x div 32) * 32 + 16;
var my = (mouse_y div 32) * 32 + 16;

if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
{
	path_start(path, 4, path_action_stop, false);
}