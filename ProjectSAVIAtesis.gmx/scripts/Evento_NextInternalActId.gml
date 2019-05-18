/* Evento_NextInternalActId(evtId, ActId)
*/

with(argument0)
{
    for(var i = 0; i <= nextActCount; i++)
    {
        if nextAct[i] == argument1 return i;
    }
}

return noone;
