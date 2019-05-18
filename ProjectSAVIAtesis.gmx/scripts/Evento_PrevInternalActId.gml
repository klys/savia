/* Evento_PrevInternalActId(evtId, ActId)
*/

with(argument0)
{
    for(var i = 0; i <= prevActCount; i++)
    {
        if prevAct[i] == argument1 return i;
    }
}

return noone;
