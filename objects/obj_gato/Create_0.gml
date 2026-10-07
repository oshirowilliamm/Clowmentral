tempo_min = 3;
tempo_max = 5;
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
                
                _inimigo.recebe_dano(global.gato, spr_efx_arranhao);
            }
            
            toca_som(snd_rosnar);
        }
        
        //resetando timer
        timer_atk = random_range(tempo_min, tempo_max) * FPS;
    }
}