// Remove the card from the deck
if (ds_stack_size(deck) > 0 ) 
{
	var top_card = instance_create_layer(x, y, "Instances", o_card);
	var card_sprite = ds_stack_pop(deck);
	top_card.sprite_index = card_sprite;
	global.card = top_card;
	global.card.depth = -1;
}