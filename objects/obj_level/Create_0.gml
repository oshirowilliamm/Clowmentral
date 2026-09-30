sprites = [spr_level1, spr_level2, spr_level3, spr_level4];
incremento = 1;


define_sprite = function()
{
    sprite_index = sprites[index];
}

efeito = function(_tam, _anim, _time = 60,)
{
    tween(id, "image_xscale", _tam, _anim, _time);
    tween(id, "image_yscale", _tam, _anim, _time);
}

indo_level = function()
{
    var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
    var _mouse_segurando = mouse_check_button(mb_left);
    var _mouse_released = mouse_check_button_released(mb_left);
    
    if (_mouse_sobre)
    {
        if (_mouse_segurando)
        {
            //efeito do click
            efeito(.8, tween_animation.flat);
        }
        else
        {
            //efeito do mouse em cima
            efeito(1.2, tween_animation.elastic);
        }
        
        //indo pro level
        if (_mouse_released)
        {
            room_goto(destino);
        }
    }
    else
    {
        efeito(1, tween_animation.elastic);
    }
}

acao = function()
{
    //mudando sprite se desbloqueado
    if (desbloqueado)
    {
        image_index = 1;
        
        indo_level();
    }
    else
    {
        image_index = 0;
    }
}