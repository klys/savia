/* Evento_GetActNextMenor(evtId, varId)
*/

var varMenor, actMenor, evtId, actId, varId;
        varId = argument1
        evtId = argument0
        varMenor = 9999;
        actMenor = noone;
        if evtId == 0 return noone;
        
        for(var i = 0; i <= evtId.nextActCount; i++) 
        {
            
            if evtId.nextAct[i] != noone and instance_exists(evtId.nextAct[i])
            {
                actId = evtId.nextAct[i]
                if real(actId.varValue[varId]) < varMenor
                {
                    varMenor = real(actId.varValue[varId])
                    actMenor = actId;
                }
            }
        }
        
        return actMenor;
