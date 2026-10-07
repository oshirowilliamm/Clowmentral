// Inherit the parent event
event_inherited();

//movimento
tempo_min = .5;
tempo_max = 1.5;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 30;

//infos
vida_max = 100;
vida = vida_max;
dano = 5;
qnt_moeda = 1;
tipo_moeda = 2;