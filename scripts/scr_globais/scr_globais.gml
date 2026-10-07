randomise();

#macro FPS game_get_speed(gamespeed_fps)

//dinheiro
global.moeda         = 0;
global.multiplicador = 1;

//vida
global.vida_max = 10;
global.vida     = global.vida_max;

//dano
global.dano = 100;

//ajudantes
global.cachorro = 0;
global.gato     = 0;

//desbloqueio de leveis
global.leveis = [true, false, false, false];

//upgrades
global.upgrades =
{
    click: 
    {
        nome: "Cuidado com a tendinite!",
        descricao: "Aumenta o dano do clique.",
        custo: 10,
        level: 1,
        efeito: function()
        {
            global.dano *= 2;
        }
    },
    cachorro:
    {
        nome: "Seu companheiro!",
        descricao: "Ataque o inimigo mais proximo.",
        custo: 20,
        level: 1,
        efeito: function()
        {
            global.cachorro++;
        }
    },
    gato:
    {
        nome: "Gatinho ligeiro",
        descricao: "Ataca todo mundo!",
        custo: 20,
        level: 1,
        efeito: function()
        {
            global.gato++;
        }
    },
    vida:
    {
        nome: "Saude importa!",
        descricao: "Aumenta sua vida.",
        custo: 25,
        level: 1,
        efeito: function()
        {
            global.vida_max *= 2;
            global.vida = global.vida_max;
        }
    },
    dinheiro:
    {
        nome: "GRANAAA!",
        descricao: "Duplique a quantidade de dinheiro que voce ganha.",
        custo: 100,
        level: 1,
        efeito: function()
        {
            global.multiplicador++;
        }
    },
}