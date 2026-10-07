var _tempo = .05;
image_alpha = lerp(image_alpha, 0, _tempo);
image_xscale = lerp(image_xscale, 0, _tempo);
image_yscale = lerp(image_yscale, 0, _tempo);



if (image_alpha <= 0)
{
    instance_destroy();
}