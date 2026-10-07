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

function formata_moeda (_valor)
{
    //quadrilhao
    if (_valor >= 1000000000000000)
    {
        var _num = _valor / 1000000000000000;
        var _str = string_format(_num, 0, 1);
        _str = string_replace(_str, ".0", "");
        
        //tirando o numero depois do . apos a dezena
        if (_num > 10)
        {
            _str = string_format(_num, 0, 0);
        }
        
        return _str + "QD";
    }
    //trilhao
    else if (_valor >= 1000000000000)
    {
        var _num = _valor / 1000000000000;
        var _str = string_format(_num, 0, 1);
        _str = string_replace(_str, ".0", "");
        
        //tirando o numero depois do . apos a dezena
        if (_num > 10)
        {
            _str = string_format(_num, 0, 0);
        }
        
        return _str + "T";
    }
    //bilhao
    else if (_valor >= 1000000000)
    {
        var _num = _valor / 1000000000;
        var _str = string_format(_num, 0, 1);
        _str = string_replace(_str, ".0", "");
        
        //tirando o numero depois do . apos a dezena
        if (_num > 10)
        {
            _str = string_format(_num, 0, 0);
        }
        
        return _str + "B";
    }
    //milhao
    else if (_valor >= 1000000)
    {
        var _num = _valor / 1000000;
        var _str = string_format(_num, 0, 1);
        _str = string_replace(_str, ".0", "");
        
        //tirando o numero depois do . apos a dezena
        if (_num > 10)
        {
            _str = string_format(_num, 0, 0);
        }
        
        return _str + "M";
    }
    //mil
    else if (_valor >= 1000)
    {
        var _num = _valor / 1000;
        var _str = string_format(_num, 0, 1);
        _str = string_replace(_str, ".0", "");
        
        //tirando o numero depois do . apos a dezena
        if (_num > 10)
        {
            _str = string_format(_num, 0, 0);
        }
        
        return _str + "K";
    }
    
    //menor que mil
    return string(round(_valor));
}