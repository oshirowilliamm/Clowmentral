if (sprite_index = spr_efx_rastro)
{
    image_alpha -= .1;
    
    if (image_alpha <= 0)
    {
        instance_destroy();
    }
}