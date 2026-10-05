vida_desenhada = global.vida;
dano_recebido = 0;



click = function()
{
    var _mouse_click = mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space);
    var _sobre_inimigo = position_meeting(mouse_x, mouse_y, obj_inimigo);
    
    if (_sobre_inimigo)
    {
        var _inimigo = instance_place(mouse_x, mouse_y, obj_inimigo);
        
        if (_mouse_click)
        {
            _inimigo.recebe_dano();
            toca_som(snd_click, .5);
        }
    }
}

recebe_dano = function(_dano)
{
    global.vida -= _dano;
    
    //efeitos
    image_blend = c_red;
    image_xscale = 1.5;
    image_yscale = 1.5;
    var _efeito = instance_create_depth(x, y, depth - 1, obj_efeito);
    _efeito.sprite_index = spr_efx_dano;
}

morrendo = function()
{
    if (global.vida <= 0)
    {
        room_goto(rm_menu);
        global.vida = global.vida_max;
    }
}

retorna_efeito = function()
{
    image_blend = merge_colour(image_blend, c_white, .08);
    image_xscale = lerp(image_xscale, 1, .08);
    image_yscale = lerp(image_yscale, 1, .08);
}

prox_fase = function()
{
    //se acabar os inimigos e as moedas, ir pra prox fase
    if (!instance_exists(obj_inimigo) && !instance_exists(obj_moeda))
    {
        room_goto(destino);
    }
}
