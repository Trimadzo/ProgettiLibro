var pt = global.pt_blood;
part_type_shape(pt, pt_shape_smoke);
part_type_size(pt, 0.1, 0.2, 0, 0);
part_type_color2(pt, c_red, c_white);
part_type_speed(pt, 2, 5, 0.2, 0);
part_type_direction(pt, 0, 360, 0, 0);
part_type_gravity(pt, 0.2, 270);

// emitter
em = part_emitter_create(global.ps);
var mx = mouse_x;
var my = mouse_y;
var shape = ps_shape_ellipse;
var distr = ps_distr_gaussian;
part_emitter_region(global.ps, em, mx-4, mx+4, my-4, my+4, shape, distr);

part_emitter_burst(global.ps, em, global.pt_blood, 100);

alarm[1] = 60;