var _tempo = 100;
tween(id, "image_alpha", 0, tween_animation.back, _tempo);
tween(id, "image_xscale", 0, tween_animation.back, _tempo);
tween(id, "image_yscale", 0, tween_animation.back, _tempo);



if (image_alpha <= 0)
{
    instance_destroy();
}