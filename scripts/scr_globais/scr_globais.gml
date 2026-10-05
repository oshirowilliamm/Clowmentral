randomise();

#macro FPS game_get_speed(gamespeed_fps)

//variaveis de upgrades
global.moeda = 0;
global.vida = 10;
global.dano = 1;

//upgrades
global.upgrades =
{
    click: 
    {
        nome: "Cuidado com a tendinite!",
        descricao: "Aumenta o dano do clique.",
        custo: 10,
        level: 1
    },
    cachorro:
    {
        nome: "Seu companheiro!",
        descricao: "Ataque o inimigo mais proximo.",
        custo: 20,
        level: 1
    },
    gato:
    {
        nome: "Gatinho ligeiro",
        descricao: "Ataca todo mundo!",
        custo: 20,
        level: 1
    },
    vida:
    {
        nome: "Saude importa!",
        descricao: "Aumenta sua vida.",
        custo: 25,
        level: 1
    },
    dinheiro:
    {
        nome: "GRANAAA!",
        descricao: "Duplique a quantidade de dinheiro que voce ganha.",
        custo: 100,
        level: 1
    },
}