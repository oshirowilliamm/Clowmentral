image_index = index;
escala = image_xscale;
ang = image_angle;



comprando = function()
{
    
}

interagindo = function()
{
    var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
    var _mouse_segurando = mouse_check_button(mb_left);
    var _mouse_released = mouse_check_button_released(mb_left);
    
    if (_mouse_sobre)
    {
        if (_mouse_segurando)
        {
            //efeito do click
            tween(id, "escala", .8, tween_animation.flat);
        }
        else
        {
            //efeito do mouse em cima
            tween(id, "escala", 1.2, tween_animation.elastic);
            tween(id, "ang", 10, tween_animation.elastic);
        }
        
        //comprando
        if (_mouse_released)
        {
            comprando();
        }
    }
    else
    {
        //retornando efeito
        tween(id, "escala", 1, tween_animation.elastic);
        tween(id, "ang", 0, tween_animation.bounce, 30);
    }
}

desenha_infos = function()
{
    //mostrando o level
    var _level = global.upgrades[$ upgrade].level;
    
    texto_scribble(x + 20, y - 22, _level, .3,, 1, 1, 2);
}