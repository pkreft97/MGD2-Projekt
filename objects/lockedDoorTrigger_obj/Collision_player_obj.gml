if (keyboard_check_pressed(player_obj.interactionKey) && player_obj.sprite_index == doorLocation && ds_list_find_index(player_obj.inventar, key) != -1)
{
	audio_play_sound(openingWoodDoor, 10, false);
	with(instance_create_depth(0, 0, -999, transitionToRoom_obj))
	{
		targetRoom = other.targetRoom;
		targetX = other.targetX;
		targetY = other.targetY;
	}
} 
else if (keyboard_check_pressed(player_obj.interactionKey) && player_obj.sprite_index == doorLocation)
{
	audio_play_sound(lockedDoorHandle, 10, false);	
}