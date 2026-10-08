// Inherit the parent event
event_inherited();

//movimento
tempo_min = .7;
tempo_max = 1.2;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 10;

//infos
vida_max = 10000;
vida = vida_max;
dano = 100000;
qnt_moeda = 1;
tipo_moeda = 5;
prox_mundo = 0;



recebe_dano = function(_dano, _efx)
{
    vida -= _dano;
    
    //efeitos
    image_blend = c_red;
    image_xscale = 1.2;
    image_yscale = 1.2;
    var _efeito = instance_create_depth(x, y, depth - 1, obj_efeito);
    _efeito.sprite_index = _efx;
    _efeito.image_xscale = 1.5;
    _efeito.image_yscale = 1.5;
}

desenha_vida = function()
{
    var _xscale = 8;
    var _yscale = 1;
    
    //pegando o tamanho da sprite de acordo com a vida
    var _porc = clamp(vida / vida_max, 0, 1);
    var _w = sprite_get_width(spr_barra_vida) * _xscale;
    var _h = sprite_get_height(spr_barra_vida) * _yscale;
    
    //posição
    var _x = room_width / 2 - _w / 2;
    var _y = 15;
    
    //desenhando a barra
    draw_sprite_ext(spr_barra_vida, 0, _x, _y, _xscale, _yscale, 0, c_white, 1);
    draw_sprite_stretched_ext(spr_barra_vida, 1, _x, _y, _w * _porc, _h, #C32454, 1);
}