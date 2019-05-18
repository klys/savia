/* Evento_Desconectar(evtName, actName)
*/

if Evento_Existe(argument0) and Actividad_Existe(argument1)
{
    var EvtId;
    EvtId = Evento_id(argument0)
    with(EvtId)
    {
        var actId = Actividad_id(argument1);
        for(var i = 0; i <= nextActCount; i++)
        {
            if nextAct[i] == actId
            {
                nextAct[i] = noone;
            }
        }
        for(var i = 0; i <= prevActCount; i++)
        {
            if prevAct[i] == actId
            {
                prevAct[i] = noone;
            }
        }
        
    }
}
else
{
    Console_TextAdd("Actividad o Evento no existen.", c_red)
}

