// Check to see if the mouse is above the button
// Find the edges
var leftx = display_x - width/scale;
var rightx = display_x + width/scale;
var topy = display_y - height/scale;
var bottomy = display_y + height/scale;

// Get the window position of the mouse
var wmx = window_mouse_get_x();
var wmy = window_mouse_get_y();

// Check to see if the mouse is inside the edges
hover = point_in_rectangle(wmx, wmy, leftx, topy, rightx, bottomy);