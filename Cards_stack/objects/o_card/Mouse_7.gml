// Drop the card on the ground or on the deck
var mx = mouse_x;
var my = mouse_y;

if (position_meeting(mx, my, o_deck))
{
	// Add the card to the deck stack
	with (o_deck)
	{
		ds_stack_push(deck, global.card.sprite_index);
	}
	
	// Destroy the card instance
	with (global.card) 
	{
		instance_destroy();
	}
}

global.card = noone;
depth = 0;