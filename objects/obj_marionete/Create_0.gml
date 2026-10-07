// Inherit the parent event
event_inherited();

//movimento
tempo_min = .7;
tempo_max = 1.2;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 30;

//infos
vida_max = 50;
vida = vida_max;
dano = 2;
qnt_moeda = 1;
tipo_moeda = 1;