letters += spd;
text_current = string_copy(text, 1, floor(letters)); // floor(x) = returns a value rounded down to the nearest int

if(h == 0) h = string_height(text);
w = string_width(text_current);

// Destroy when done
if ((letters >= textLength && keyboard_check_pressed(player_obj.interactionKey)) || !point_in_circle(player_obj.x, player_obj.y, x, y, 350))
{
	instance_destroy();
}