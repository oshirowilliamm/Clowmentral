tempo_min = 2;
tempo_max = 4;
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
            _prox.recebe_dano();
            toca_som(snd_latido);
        }
        
        //resetando timer
        timer_atk = random_range(tempo_min, tempo_max) * FPS;
    }
}