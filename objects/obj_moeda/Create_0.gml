direction = random(359);
speed = 4;
seguir = false;
spd_seguir = 0;
valor = 1;
tipo_moeda = 1;

alarm[0] = 10;
alarm[1] = 60;



definindo_valor = function()
{
    switch (image_index) 
    {
    	case 0: valor = 1; break;
        case 1: valor = 10; break;
        case 2: valor = 100; break;
        case 3: valor = 500; break;
        case 4: valor = 1000; break;
        case 5: valor = 5000; break;
    }
}

colidindo_mouse = function()
{
    var _dist = point_distance(x, y, mouse_x, mouse_y);
    
    if (_dist < 10)
    {
        instance_destroy(id);
        
        global.moeda += valor * global.multiplicador;
        toca_som(snd_moeda, .2);
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