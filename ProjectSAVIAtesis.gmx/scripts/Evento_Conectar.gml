/* Evento_Conectar(EvtNombre, ActNombre, boolean )

    Conecta los eventos con las actividades
    
    Parametros:
            arg 0 - Nombre de Evento
            arg 1 - Nombre de Actividad
            arg 2 - String next/prev
*/


if Evento_Existe(argument0) and Actividad_Existe(argument1) //and Variable_Existe(argument3)
{
    var evtId, actId;
    evtId = Evento_id(argument0)
    actId = Actividad_id(argument1)
    
    with(evtId)
    {
        if argument2 == 'next'
        {
            nextActCount++;
            nextAct[nextActCount] = Actividad_id(argument1)
        }
        else if argument2 == 'prev'
        {
            prevActCount++;
            prevAct[prevActCount] = Actividad_id(argument1);
        }
    }
    
    with(actId)
    {
        if argument2 == 'next'
        {
            EvtPrev = Evento_id(argument0)
        }
        else if argument2 == 'prev'
        {
            EvtNext = Evento_id(argument0)
        }
    }
}
else
{
    Console_TextAdd("No se logro conectar nada.", c_red)
}
