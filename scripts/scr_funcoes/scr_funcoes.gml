function texto_scribble(_x, _y, _txt, _xscale = 1, _yscale = _xscale, _halign = 0, _valign = 0, _espaco = 3, _angle = 0, _cor = c_white, _font = "fnt_hud", _alpha = 1)
{
    scribble(_txt)
        .starting_format(_font, c_white)
        .align(_halign, _valign)
        .transform(_xscale, _yscale, _angle)
        .blend(c_black, _alpha)
        .draw(_x + _espaco, _y + _espaco);
    
    scribble(_txt)
        .starting_format(_font, c_white)
        .align(_halign, _valign)
        .transform(_xscale, _yscale, _angle)
        .blend(_cor, _alpha)
        .draw(_x, _y);
}

function texto_scribble_ext(_x, _y, _txt, _xscale = 1, _yscale = _xscale, _halign = 0, _valign = 0, _espaco = 3, _angle = 0, _cor = c_white, _wrap = 0, _font = "fnt_hud")
{
    scribble(_txt)
        .starting_format(_font, c_white)
        .align(_halign, _valign)
        .transform(_xscale, _yscale, _angle)
        .blend(c_black, 1)
        .wrap(_wrap)
        .draw(_x + _espaco, _y + _espaco);
    
    scribble(_txt)
        .starting_format(_font, c_white)
        .align(_halign, _valign)
        .transform(_xscale, _yscale, _angle)
        .blend(_cor, 1)
        .wrap(_wrap)
        .draw(_x, _y);
}

function toca_som (_snd, _pitch = 0)
{
    var _p = random_range(1 - _pitch, 1 + _pitch);
    audio_play_sound(_snd, 0, 0,,, _p);
}