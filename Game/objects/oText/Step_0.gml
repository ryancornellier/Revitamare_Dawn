// Progress Text 

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fTextBubble);
if (h == 0) h = string_height(text);
w = string_width(text_current);

// Destroy When Done
//if (letters >= length) and (keyboard_check_pressed(vk_anykey))
//{
//	instance_destroy();
//	with (oCamera) follow = oPlayer;
//}

//Destroy When Clicked with Right Mouse Button 
if mouse_check_button_pressed(mb_right) 
{
    if collision_point(mouse_x, mouse_y, oText, true, false) //Arguments are (x, y, obj, prec, notme)
    {
		instance_destroy();
	}
}