if (keyboard_check_pressed(player_obj.interactionKey) && player_obj.sprite_index == doorLocation)
{
	with(instance_create_depth(0, 0, -999, transitionToRoom_obj))
	{
		targetRoom = other.targetRoom;
		targetX = other.targetX;
		targetY = other.targetY;
	}
} 