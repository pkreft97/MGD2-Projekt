if (keyboard_check_pressed(player_obj.interactionKey) && player_obj.sprite_index == doorLocation)
{
	audio_play_sound(sound, 10, false);
	with(instance_create_depth(0, 0, -999, transitionToRoom_obj))
	{
		targetRoom = other.targetRoom;
		targetX = other.targetX;
		targetY = other.targetY;
	}
} 