/// @description Initialize the ground
flags = phy_debug_render_shapes |		//holds the different render flags that we want our ground object to use when it draws the physics world
		phy_debug_render_joints |
		phy_debug_render_coms |
		phy_debug_render_obb;
		
var xx = -100;
var yy = 0;

var fix = physics_fixture_create();
physics_fixture_set_chain_shape(fix, false);
repeat(100)
{
	physics_fixture_add_point(fix, xx, yy);
	xx += 50 + random(150);
	yy += -32 + irandom(64);
	yy = median(64, yy, room_height - 64);
}

physics_fixture_set_density(fix, 0);
physics_fixture_set_restitution(fix, 0.5);
physics_fixture_bind(fix, id);
physics_fixture_delete(fix);