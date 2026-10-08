tempo_min = 2;
tempo_max = 3.5;
timer_atk = random_range(tempo_min, tempo_max) * FPS;



ataca = function()
{
    timer_atk--;
    
    if (timer_atk <= 0)
    {
        //atacando todos os inimigos
        if (instance_exists(obj_inimigo))
        {
            for (var i = 0; i < instance_number(obj_inimigo); i++)
            {
                var _inimigo = instance_find(obj_inimigo, i);
                
                var _dano = round(global.cachorro + (global.dano * .5));
                _inimigo.recebe_dano(_dano, spr_efx_arranhao);
            }
            
            toca_som(snd_rosnar);
        }
        
        //resetando timer
        timer_atk = random_range(tempo_min, tempo_max) * FPS;
    }
}