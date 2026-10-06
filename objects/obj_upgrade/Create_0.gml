image_index = index;
escala = image_xscale;
ang = image_angle;
info = noone;



comprando = function()
{
    var _upgrade = global.upgrades[$ upgrade];
       
    if (global.moeda >= _upgrade.custo)
    {
        global.moeda -= _upgrade.custo;
        
        _upgrade.level++;
        _upgrade.custo += round(_upgrade.custo * .2);
        _upgrade.efeito();
    }
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
    if (position_meeting(mouse_x, mouse_y, id))
    {
        if (!instance_exists(info))
        {
            info = instance_create_depth(x, y - 25, depth - 1, obj_upgrade_info, {upgrade: upgrade});
        }
    }
    else
    {
        if (instance_exists(info))
        {
            instance_destroy(info);
        }
    }
}