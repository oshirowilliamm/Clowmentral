function texto(_x, _y, _txt, _xscale = 1, _yscale = _xscale, _halign = 0, _valign = 0, _espaco = 3, _font = "fnt_hud")
{
    scribble(_txt)
        .starting_format(_font, c_white)
        .align(_halign, _valign)
        .scale(_xscale, _yscale)
        .blend(c_black, 1)
        .draw(_x + _espaco, _y + _espaco);
    
    scribble(_txt)
        .starting_format(_font, c_white)
        .align(_halign, _valign)
        .scale(_xscale, _yscale)
        .blend(c_white, 1)
        .draw(_x, _y);
}