//movimento
tempo_min = .7;
tempo_max = 1.2;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 30;

//infos
vida_max = 15;
vida = vida_max;
dano = 1;
qnt_moeda = 1;
tipo_moeda = 0;

y_destino = y;



andando = function()
{
    if (timer_andar > 0) timer_andar--;
    
    if (timer_andar <= 0)
    {
        y_destino += deslocamento;
        
        timer_andar = random_range(tempo_min, tempo_max) * FPS;
    }
    
    y = lerp(y, y_destino, .1);
}

colisao_player = function()
{
    //qnd chegar perto do player
    if (y >= 300)
    {
        y_destino = ystart;
        
        //dando dano no player
        obj_player.recebe_dano(dano);
        audio_stop_sound(snd_dano_player);
        toca_som(snd_dano_player);
    }
}

recebe_dano = function(_dano, _efx)
{
    vida -= _dano;
    
    //efeitos
    image_blend = c_red;
    image_xscale = 1.5;
    image_yscale = 1.5;
    
    //efeito de dano
    var _efeito = instance_create_depth(x, y, depth - 1, obj_efeito);
    _efeito.sprite_index = _efx;
    
    //efeito de numero
    var _num = instance_create_depth(x + 10, y - 10, depth - 1, obj_efx_num);
    _num.dano = _dano;
}

retorna_efeito = function()
{
    image_blend = merge_colour(image_blend, c_white, .08);
    image_xscale = lerp(image_xscale, 1, .08);
    image_yscale = lerp(image_yscale, 1, .08);
}

morrendo = function()
{
    if (vida <= 0)
    {
        instance_destroy(id);
        
        //efeitos
        var _efeito = instance_create_depth(x, y, depth - 1, obj_efeito);
        _efeito.sprite_index = spr_efx_explosao;
        
        //criando as moedas
        repeat (qnt_moeda)
        {
            var _moeda = instance_create_depth(x, y, depth - 1, obj_moeda);
            _moeda.image_index = tipo_moeda;
        }
    }
}

desenha_vida = function()
{
    //pegando o tamanho da sprite de acordo com a vida
    var _porc = clamp(vida / vida_max, 0, 1);
    var _w = sprite_get_width(spr_barra_vida);
    var _h = sprite_get_height(spr_barra_vida);
    
    //posição
    var _x = x - _w / 2;
    var _y = y - 40;
    
    //desenhando a barra
    draw_sprite(spr_barra_vida, 0, _x, _y);
    draw_sprite_stretched_ext(spr_barra_vida, 1, _x, _y, _w * _porc, _h, #C32454, 1);
}