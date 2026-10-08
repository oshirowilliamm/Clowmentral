debug = false;
moeda_desenhada = global.moeda;
vida_desenhada  = global.vida;
mundo = false;



decide_musica = function()
{
    var _musica = noone;
    
    if (room == rm_menu) _musica = snd_menu;
    if (room == rm_upgrades) _musica = snd_upgrade;
    if (room == rm_mundo1_level1) _musica = snd_mundo1;
    if (room == rm_mundo2_level1) _musica = snd_mundo1;
    if (room == rm_mundo3_level1) _musica = snd_mundo2;
    if (room == rm_mundo4_level1) _musica = snd_mundo3;
    if (room == rm_mundo4_level4) _musica = snd_mundo4;
    
    if (_musica != noone)
    {
        audio_stop_all();
        audio_play_sound(_musica, 0, 1);
    }
}

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
    
    texto_scribble(_x, _y, formata_moeda(round(vida_desenhada)), .8,, 2);
    texto_scribble(_x + 15, _y, _sprite, .8);
}

debug_step = function()
{
    if (keyboard_check(vk_up))
    {
        if (global.moeda <= 0) global.moeda = 1;
        else
        {
            global.moeda += global.moeda * .5;
        }
    }
    
    if (keyboard_check_pressed(ord("R")))
    {
        game_restart();
    }
    
    if (keyboard_check_pressed(vk_tab))
    {
        debug = !debug;
    }
    
    show_debug_overlay(debug)
}