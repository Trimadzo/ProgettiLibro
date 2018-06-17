// draw the grid
var gridw = ds_grid_width(grid);
var gridh = ds_grid_height(grid);
for (var i = 0; i < gridw; i++)
{
	for (var j = 0; j < gridh; j++)
	{
		if (ds_grid_get(grid, j, i) == -1)
		{
			continue;
		}
		var subi = ds_grid_get(grid, j, i);
		draw_sprite(s_char, subi, j*160, i*160);
	}
}