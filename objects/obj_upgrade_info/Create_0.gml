image_xscale = .7;
image_yscale = .4;



pegando_valor = function(_upgrade)
{
    switch (_upgrade) 
    {
    	case "click":       return global.dano;
        case "cachorro":    return global.cachorro;
        case "gato":        return global.gato;
        case "vida":        return formata_moeda(global.vida_max);
        case "dinheiro":    return global.multiplicador;
    }
}

pegando_prox_valor = function(_upgrade)
{
    switch (_upgrade) 
    {
    	case "click":       return global.dano + 1;
        case "cachorro":    return global.cachorro + 5;
        case "gato":        return global.gato + 2;
        case "vida":        return formata_moeda(global.vida_max + 15);
        case "dinheiro":    return global.multiplicador + 1;
    }
}

desenha_infos = function()
{
    var _upgrade = global.upgrades[$ upgrade];
    var _y = y - sprite_height;
    
    //nome
    texto_scribble(x, _y, _upgrade.nome, .4,, 1, 1, 1.5,, #F9C22B);
    
    //desc
    _y += 20;
    texto_scribble_ext(x, _y, _upgrade.descricao, .3,, 1,, 1.2,,, 400);
    
    //prox valor
    _y += 60;
    var _prox = string("{0} -> {1}", pegando_valor(upgrade), pegando_prox_valor(upgrade));
    texto_scribble(x, _y, _prox, .3,, 1, 1, 1.2,, #F9C22B);
    
    //custo
    _y += 25;
    var _custo = string("[scale, 4][{0},0][/] {1}", spr_moedas, formata_moeda(global.upgrades[$ upgrade].custo));
    texto_scribble(x - 5, _y, _custo, .4,, 1, 1, 1.2);

}