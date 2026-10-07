debug = false;
moeda_desenhada = global.moeda;
vida_desenhada  = global.vida;



desenha_moeda = function()
{
    var _x = 30;
    var _y = 60;
    var _escala = 3;
    
    //desenhando fundo
    draw_sprite_ext(spr_caixa_moeda, 0, _x + 75, _y - 3, _escala, _escala, 0, c_white, 1);
    
    
    moeda_desenhada = lerp(moeda_desenhada, global.moeda, .1);
    var _sprite = string("[scale, 4][{0}, 0][/]", spr_moedas);
    
    texto_scribble(_x + 140, _y, formata_moeda(round(moeda_desenhada)), .7,, 2, 1);
    texto_scribble(_x + 25, _y, _sprite, .7,, 1, 1);
}

desenha_vida = function()
{
    if (room == rm_menu || room == rm_upgrades) return;
    
    var _x = display_get_gui_width() - 80;
    var _y = display_get_gui_height() - 80;
    
    vida_desenhada = lerp(vida_desenhada, global.vida, .1);
    var _sprite = string("[scale, 4][{0}, 0][/]", spr_vida);
    
    texto_scribble(_x, _y, round(vida_desenhada), .8,, 2);
    texto_scribble(_x + 15, _y, _sprite, .8);
}