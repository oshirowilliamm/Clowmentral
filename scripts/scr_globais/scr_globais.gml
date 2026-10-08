randomise();

#macro FPS game_get_speed(gamespeed_fps)

//dinheiro
global.moeda         = 0;
global.multiplicador = 1;

//vida
global.vida_max = 10;
global.vida     = global.vida_max;

//dano
global.dano = 1;

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
        custo: 15,
        level: 1,
        efeito: function()
        {
            global.dano++;
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
            global.cachorro += 5;
        }
    },
    gato:
    {
        nome: "Gatinho ligeiro",
        descricao: "Ataca todo mundo!",
        custo: 25,
        level: 1,
        efeito: function()
        {
            global.gato += 2;
        }
    },
    vida:
    {
        nome: "Saude importa!",
        descricao: "Aumenta sua vida.",
        custo: 10,
        level: 1,
        efeito: function()
        {
            global.vida_max += 15;
            global.vida = global.vida_max;
        }
    },
    dinheiro:
    {
        nome: "GRANAAA!",
        descricao: "Aumenta o valor das moedas.",
        custo: 80,
        level: 1,
        efeito: function()
        {
            global.multiplicador++;
        }
    },
}