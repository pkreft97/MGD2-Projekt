if (keyboard_check_pressed(player_obj.interactionKey))
{
	instance_deactivate_object(player_obj);
	instance_create_depth(500, 500, -500, fade_obj);	
} 