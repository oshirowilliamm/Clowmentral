//desenhando o fundo
draw_sprite_ext(spr_btn_upgrade, 0, x, y, image_xscale, image_yscale, image_angle, cor, 1);

draw_self();

//desenhando level
var _level = string("Lvl.  {0}", dados.level);
texto_scribble(x, y + 25, _level, .2,, 1, 1, 1,, cor);