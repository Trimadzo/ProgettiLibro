/// Draw the GUI button
if (hover)
{
	draw_set_alpha(0.2);
}
else 
{
	draw_set_alpha(0.5);
}

var leftx = display_x - width/scale;
var rightx = display_x + width/scale;
var topy = display_y - height/scale;
var bottomy = display_y + height/scale;

// Draw the button using a rectangle
draw_rectangle(leftx, topy, rightx, bottomy, false);
draw_set_alpha(1);

// Draw the horizontal and vertical alignments for text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw the button text
var col = c_white;
draw_text_color(display_x, display_y, text, col, col, col, col, 1);