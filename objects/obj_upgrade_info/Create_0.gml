image_xscale = .7;
image_yscale = .4;



desenha_infos = function()
{
    var _upgrade = global.upgrades[$ upgrade];
    var _y = y - sprite_height;
    
    //nome
    texto_scribble(x, _y, _upgrade.nome, .4,, 1, 1, 1.5,, #F9C22B);
    
    //desc
    _y += 20;
    texto_scribble_ext(x, _y, _upgrade.descricao, .3,, 1,, 1.2,,, 400);
    
    //level
    _y += 60;
    texto_scribble(x, _y, string("-- {0} --", _upgrade.level), .3,, 1, 1, 1.2,, #F9C22B);
    
    //custo
    _y += 25;
    var _custo = string("[scale, 4][{0},0][/] {1}", spr_moedas, global.upgrades[$ upgrade].custo);
    texto_scribble(x - 5, _y, _custo, .4,, 1, 1, 1.2);
}