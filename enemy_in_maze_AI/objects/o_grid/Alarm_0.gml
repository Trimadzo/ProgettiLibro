/// Create the grid
// Create some temporary variables
var cw = 32;
var ch = 32;
var hc = room_width/cw;
var vc = room_height/ch;

// Create the grid
global.grid = mp_grid_create(0, 0, hc, vc, cw, ch);

// Add the walls to the grid
mp_grid_add_instances(global.grid, o_solid, 0);