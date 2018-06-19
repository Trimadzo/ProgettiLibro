// Local variables to shorten code
var mx = mouse_x;
var my = mouse_y;
var mxp = mouse_xprevious;
var myp = mouse_yprevious;

if (surface_exists(surface))
{
	if (mouse_check_button(mb_left))
	{
		surface_set_target(surface);
		draw_circle_color(mx, my, 3, c_blue, c_blue, false);
		draw_line_width_color(mxp, myp, mx, my, 8, c_blue, c_blue);
		surface_reset_target();
	}
	draw_surface(surface, 0, 0);
	mouse_xprevious = mouse_x;
	mouse_yprevious = mouse_y;
}
else
{
	// We need to create it
	surface = surface_create(640, 360);
	surface_set_target(surface);
	draw_clear_alpha(c_red, 1);
	surface_reset_target();
}