debug = false;



desenha_moeda = function()
{
    var _x = 20;
    var _y = 40;
    
    var _txt = string("[scale, 4][{0},0][/] {1}", spr_moedas, global.moeda);
    texto_scribble(_x, _y, _txt, .8,,, 1);
}

desenha_vida = function()
{
    if (room == rm_menu || room == rm_upgrades) return;
    
    var _x = display_get_gui_width() - 80;
    var _y = display_get_gui_height() - 80;
    
    var _sprite = string("[scale, 4][{0}, 0][/]", spr_vida);
    texto_scribble(_x, _y, global.vida, .8,, 2);
    texto_scribble(_x + 15, _y, _sprite, .8);
}