/* Evento_Num(0)

    Asignador de numero de eventos
    
    Retorna: 
            Double
*/

var n;
argument0 = 0;
if instance_exists(objEvento)
{
    with(objEvento)
    {
        argument0++;
    }
}
else return 0;

return argument0;
