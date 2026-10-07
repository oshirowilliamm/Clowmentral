// Inherit the parent event
event_inherited();

//movimento
tempo_min = .2;
tempo_max = .2;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 5;

//infos
vida_max = 1200;
vida = vida_max;
dano = 10;
qnt_moeda = 5;
tipo_moeda = 3;
prox_mundo = 3;



colisao_player = function()
{
    //qnd chegar perto do player
    if (y >= 300)
    {
        y_destino = y - 20;
        
        //dando dano no player
        obj_player.recebe_dano(dano);
        audio_stop_sound(snd_dano_player);
        toca_som(snd_dano_player);
    }
}