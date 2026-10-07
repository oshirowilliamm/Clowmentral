// Inherit the parent event
event_inherited();


prox_mundo = 0;


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
        
        //desbloqueando o prox mundo
        global.leveis[prox_mundo] = true;
    }
}