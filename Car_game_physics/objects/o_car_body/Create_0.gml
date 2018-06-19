/// @description Initialize the car
var half = sprite_width/2;

var tire = instance_create_layer(x-half+12, y, "Instances", o_car_tire);
var tx = tire.x;
var ty = tire.y;
physics_joint_revolute_create(id, tire, tx, ty, 0, 0, 0, 0, 0, 0, 0);

var tire = instance_create_layer(x+half-12, y, "Instances", o_car_tire);
var tx = tire.x;
var ty = tire.y;
physics_joint_revolute_create(id, tire, tx, ty, 0, 0, 0, 0, 0, 0, 0);