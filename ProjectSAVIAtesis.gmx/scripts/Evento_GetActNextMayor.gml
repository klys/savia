/* Evento_GetActNextMayor(evtId, varId)
*/

var varMayor, actMayor, evtId, actId, varId;
        varId = argument1
        evtId = argument0
        varMayor = -1;
        actMayor = noone;
        for(var i = 0; i <= evtId.nextActCount; i++) 
        {
            
            if evtId.nextAct[i] != noone and instance_exists(evtId.nextAct[i])
            {
                actId = evtId.nextAct[i]
                if real(actId.varValue[varId]) > varMayor
                {
                    varMayor = real(actId.varValue[varId])
                    actMayor = actId;
                }
            }
        }
        
        return actMayor;
