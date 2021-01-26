if (point_in_circle(player_obj.x, player_obj.y, x, y, 200) && !instance_exists(textBox_obj))
{
	draw_sprite(actionKey_spr,0, x+20, y+25);
	with (instance_create_layer(x, y-64, layer, textBox_obj))
	{
		text = other.text;
		length = string_length(text);
	}
}