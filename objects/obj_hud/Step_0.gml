if (keyboard_check(vk_up))
{
    global.moeda++; 
    global.vida += 10;
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