/* Evento_GetActPrevMayor(evtId,varId)
*/

var varMayor, actMayor, evtId, actId, varId;
        varId = argument1
        evtId = argument0
        varMayor = -1;
        actMayor = noone;
        for(var i = 0; i <= evtId.prevActCount; i++) 
        {
            
            if evtId.prevAct[i] != noone and instance_exists(evtId.prevAct[i])
            {
                actId = evtId.prevAct[i]
                if real(actId.varValue[varId]) > varMayor
                {
                    varMayor = real(actId.varValue[varId])
                    actMayor = actId;
                }
            }
        }
        
        return actMayor;
