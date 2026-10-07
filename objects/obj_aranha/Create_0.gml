// Inherit the parent event
event_inherited();

//movimento
tempo_min = 1.5;
tempo_max = 2.5;
timer_andar = random_range(tempo_min, tempo_max) * FPS;
deslocamento = 60;

//infos
vida_max = 300;
vida = vida_max;
dano = 12;
qnt_moeda = 2;
tipo_moeda = 3;