tempo_andar = random_range(2, 3) * FPS;
timer_andar = tempo_andar;

deslocamento = 20;
y_destino = y;

vida = 10;
dano = 1;
qnt_moeda = 5;



andando = function()
{
    if (timer_andar > 0) timer_andar--;
    
    if (timer_andar <= 0)
    {
        y_destino += deslocamento;
        
        timer_andar = tempo_andar;
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
    }
}

recebe_dano = function()
{
    vida -= global.dano;
    
    //efeitos
    image_blend = c_red;
    image_xscale = 1.5;
    image_yscale = 1.5;
    var _efeito = instance_create_depth(x, y, depth - 1, obj_efeito);
    _efeito.sprite_index = spr_efx_dano;
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
            instance_create_depth(x, y, depth - 1, obj_moeda);
        }
    }
}