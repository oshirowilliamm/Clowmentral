escala = image_xscale;
ang = image_angle;



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
            tween(id, "escala", 1.8, tween_animation.flat);
        }
        else
        {
            //efeito do mouse em cima
            tween(id, "escala", 2.2, tween_animation.elastic);
            tween(id, "ang", 5, tween_animation.elastic);
        }
        
        //mudando room
        if (_mouse_released)
        {
            room_goto(destino);
        }
    }
    else
    {
        //retornando efeito
        tween(id, "escala", 2, tween_animation.elastic);
        tween(id, "ang", 0, tween_animation.elastic);
    }
}