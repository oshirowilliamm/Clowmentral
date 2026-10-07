tempo_min = 2;
tempo_max = 4;
timer_atk = random_range(tempo_min, tempo_max) * FPS;



ataca = function()
{
    timer_atk--;
    
    if (timer_atk <= 0)
    {
        //atacando todos os inimigos
        for (var i = 0; i < instance_number(obj_inimigo); i++)
        {
            var _inimigo = instance_find(obj_inimigo, i);
            
            _inimigo.recebe_dano();
        }
        
        //resetando timer
        timer_atk = random_range(tempo_min, tempo_max) * FPS;
    }
}