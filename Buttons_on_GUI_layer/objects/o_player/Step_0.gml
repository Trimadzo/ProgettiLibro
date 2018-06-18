// Move the player
var spd = 4;
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);

x += (right - left) * spd;
y += (down - up) * spd;