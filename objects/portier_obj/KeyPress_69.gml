if (point_in_circle(player_obj.x, player_obj.y, x, y, 200) && !instance_exists(textBox_obj))
{
	with (instance_create_layer(x, y-64, layer, textBox_obj))
	{
		text = ds_list_find_value(other.textList, 0);
		textLength = string_length(text);
	}
	
	
	if(ds_list_size(textList) == 4)
	{
		audio_play_sound(gettinKeys, 10, false);
		with(player_obj)
		{
			ds_list_add(inventar, "Key_to_personal_room");
		}
	}
	
	
	if(ds_list_size(textList) > 1)
	{
		ds_list_delete(textList, 0);	
	}
}