/// @description Draw self and state
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_self();
draw_set_alpha(0.1);
draw_circle_color(x, y, sight_range, c_red, c_red, false);
draw_set_alpha(1);
draw_text(x, y, state_text);