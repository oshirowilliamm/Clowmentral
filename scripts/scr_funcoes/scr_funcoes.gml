function texto(_x, _y, _txt, _halign = 0, _valign = 0, _font = fnt_game)
{
    draw_set_font(_font);
    draw_set_halign(_halign);
    draw_set_valign(_valign);
    
    draw_text(_x, _y, _txt);
    
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_font(-1);
}