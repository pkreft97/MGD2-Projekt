var halfW = w / 2;

// Draw speech bubble
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfW-border, y-h-(border*2), x+halfW+border, y, 15, 15, false);
draw_set_alpha(1);

// Draw text
draw_set_colour(c_white);
draw_set_font(textBox_font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(x, y-h-border, text_current);