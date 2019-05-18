/* Evento_GetActPrevMenor(evtId,varId)
*/

var varMenor, actMenor, evtId, actId, varId;
        varId = argument1
        evtId = argument0
        varMenor = 9999;
        actMenor = noone;
        for(var i = 0; i <= evtId.prevActCount; i++) 
        {
            
            if evtId.prevAct[i] != noone and instance_exists(evtId.prevAct[i])
            {
                actId = evtId.prevAct[i]
                if real(actId.varValue[varId]) < varMenor
                {
                    varMenor = real(actId.varValue[varId])
                    actMenor = actId;
                }
            }
        }
        
        return actMenor;
