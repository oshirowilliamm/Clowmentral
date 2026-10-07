// Inherit the parent event
event_inherited();

//movimento
tempo_min = 1;
tempo_max = 2;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 30;

//infos
vida_max = 30;
vida = vida_max;
dano = 8;
qnt_moeda = 1;
tipo_moeda = 1;