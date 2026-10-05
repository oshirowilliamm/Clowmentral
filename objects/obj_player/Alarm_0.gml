//pegando as moedas que sobraram
for (var i = 0; i < instance_number(obj_moeda); i++)
{
    var _moeda = instance_find(obj_moeda, i);
    
    global.moeda += _moeda.valor;
}

room_goto(destino);