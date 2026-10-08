vida_desenhada = global.vida;
dano_recebido = 0;

//variaveis pro click segurado
tempo_click = 8;
timer_click = tempo_click;

//ajudantes
cachorro = noone;
gato     = noone;




click_segurado = function()
{
    var _mouse = mouse_check_button(mb_left) || keyboard_check(vk_space);
    
    if (_mouse)
    {
        timer_click--;
        
        if (timer_click <= 0)
        {
            timer_click = tempo_click;
            return true;
        }
    }
    else
    {
        timer_click = tempo_click;
    }
    
    return false;
}

click = function()
{
    var _click = mouse_check_button_pressed(mb_left);
    var _space = keyboard_check_pressed(vk_space);
    var _inimigo = instance_position(mouse_x, mouse_y, obj_inimigo);
    
    if (_inimigo)
    {
        //click normal
        if (_click)
        {
            timer_click = tempo_click;
            _inimigo.recebe_dano(global.dano, spr_efx_dano);
            toca_som(snd_click, .5);
        }
        
        //click espaço
        if (_space)
        {
            timer_click = tempo_click;
            _inimigo.recebe_dano(global.dano, spr_efx_dano);
            toca_som(snd_click, .5);
        }
        
        //click segurado
        if (click_segurado())
        {
            _inimigo.recebe_dano(global.dano, spr_efx_dano);
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
    
    //efeito de dano
    var _efeito = instance_create_depth(x, y, depth - 1, obj_efeito);
    _efeito.sprite_index = spr_efx_dano;
    
    //efeito de numero
    var _num = instance_create_depth(x + 10, y - 10, depth - 1, obj_efx_num);
    _num.dano = _dano;
    _num.cor = c_red;
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

cria_cachorro = function()
{
    if (global.cachorro > 0)
    {
        if (!instance_exists(cachorro))
        {
            cachorro = instance_create_depth(x - 50, y - 20, depth, obj_cachorro);
        }
    }
}

cria_gato = function()
{
    if (global.gato > 0)
    {
        if (!instance_exists(gato))
        {
            gato = instance_create_depth(x + 50, y - 20, depth, obj_gato);
        }
    }
}