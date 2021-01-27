if(state == fade_in)
{
	image_alpha += fade_in_speed;
	if(image_alpha >= 1)
	{
		image_alpha = 1;
		state = fade_out;
		
		if(instance_exists(camera_obj)) instance_destroy(camera_obj);
		if(instance_exists(flashlightLight_obj)) instance_destroy(flashlightLight_obj);
		
		room_goto(targetRoom);
		player_obj.x = targetX;
		player_obj.y = targetY;
	}	
}

else if(state == fade_out)
{
	if(!instance_exists(camera_obj)) instance_create_depth(player_obj.x,player_obj.y, -1, camera_obj);
	if(!instance_exists(flashlightLight_obj)) instance_create_depth(player_obj.x,player_obj.y, 304, flashlightLight_obj);
	
	image_alpha -= fade_out_speed;
	if(image_alpha <= 0)
	{
		image_alpha = 0;
		instance_destroy();
	}	
}