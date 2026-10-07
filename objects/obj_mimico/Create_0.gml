// Inherit the parent event
event_inherited();

//movimento
tempo_min = 4;
tempo_max = 5;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 200;

//infos
vida_max = 200;
vida = vida_max;
dano = 10;
qnt_moeda = 5;
tipo_moeda = 1;
prox_mundo = 1;