//desenhando a moeda
var _x = 20;
var _y = 40;

dinheiro_desenhado = lerp(dinheiro_desenhado, global.moeda, .2);
var _txt = string("[scale, 4][{0},0][/] {1}", spr_moedas, round(dinheiro_desenhado));
texto_scribble(_x, _y, _txt, .8,,, 1);