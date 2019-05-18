/* Evento_ListaIgnoring(evtInicial,evtFinal, 0)
*/

var Lista;
argument2 = ds_list_create()

with(objEvento)
{
    if strNombre != argument1 and strNombre != argument0
    {
        ds_list_add(argument2,id)
    }
}

return argument2;
