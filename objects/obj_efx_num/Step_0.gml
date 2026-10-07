//fazendo ele começa a cair
vspeed = lerp(vspeed, 1, .1);

//fazendo desaparecer
if (vspeed > 0)
{
    alpha -= .05;
    
    if (alpha <= 0) instance_destroy();
}

show_debug_message(vspeed)