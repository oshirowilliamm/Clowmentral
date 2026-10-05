//criando os rastros
if (speed > .1 || spd_seguir > 0)
{
    instance_create_depth(x, y, depth + 1, obj_rastro);
    alarm[0] = 10;
}