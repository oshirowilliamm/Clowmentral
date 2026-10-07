// Inherit the parent event
event_inherited();

//movimento
tempo_min = .2;
tempo_max = .2;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 5;

//infos
vida_max = 100;
vida = vida_max;
dano = 25;
qnt_moeda = 2;
tipo_moeda = 2;