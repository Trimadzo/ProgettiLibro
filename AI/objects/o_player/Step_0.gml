/// @description Control the player's movement
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

if (right) {x += 4;}
if (left) {x -= 4;}
if (up) {y -= 4;}
if (down) {y += 4;}

image_alpha = hp;
if (hp <= 0) {game_end();}