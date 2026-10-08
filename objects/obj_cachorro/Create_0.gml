tempo_min = 1.5;
tempo_max = 2.5;
timer_atk = random_range(tempo_min, tempo_max) * FPS;



ataca = function()
{
    timer_atk--;
    
    if (timer_atk <= 0)
    {
        //atacando o inimigo mais proximo
        var _prox = instance_nearest(x, y, obj_inimigo);
        
        if (_prox)
        {
            var _dano = round(global.cachorro + (global.dano * .5));
            
            _prox.recebe_dano(_dano, spr_efx_mordida);
            toca_som(snd_latido);
        }
        
        //resetando timer
        timer_atk = random_range(tempo_min, tempo_max) * FPS;
    }
}