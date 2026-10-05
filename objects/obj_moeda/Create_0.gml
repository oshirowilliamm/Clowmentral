direction = random(359);
speed = 4;
seguir = false;
spd_seguir = 0;
valor = 1;

alarm[0] = 10;
alarm[1] = 60;



colidindo_mouse = function()
{
    var _dist = point_distance(x, y, mouse_x, mouse_y);
    
    if (_dist < 10)
    {
        instance_destroy(id);
        
        global.moeda += valor;
    }
}

segue_mouse = function()
{
    if (!seguir) return;
    
    //aumentando a velocidade
    spd_seguir = lerp(spd_seguir, 10, .05);
    
    //indo na direção do mouse
    var _dir = point_direction(x, y, mouse_x, mouse_y);
    
    x += lengthdir_x(spd_seguir, _dir);
    y += lengthdir_y(spd_seguir, _dir);
    
    colidindo_mouse();
}