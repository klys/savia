/* Grafo_CPM(evt_inicial, evt_final, variable_nombre)
    
    Script que intenta calcular PERT en el grafo dado su evento inicial,
    evento final y la variable que se desea calcular.

    Parametros:
            arg 0 - evt_inicial, nombre del evento inicial (Ej: 'Evt.1')
            arg 1 - evt_final, Nombre del evento final (Ej: 'Evt.9')
            arg 2 - variable_nombre, nombre de la variable a calcular en el grafo.
*/

var evtId, actId, evtName, actName, varId;
var iActId;
if Evento_Existe(argument0) and Evento_Existe(argument1) and Variable_Existe(argument2)
{
    evtName = argument0
    varId = Variable_id(argument2)
    // Early Start Calculation
    evtId = Evento_id(evtName)
    while(evtId.strNombre != argument1) // Early Start calculation
    {
        if evtId.prevActCount < 0 // what to do on START NODE
        {
            var varMayor, actMayor;
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
            
            if actMayor != noone
            {
                
                iActId = Evento_NextInternalActId(evtId, actMayor)
                if iActId != noone and instance_exists(iActId)
                {
                    evtId.nextActColor[varId,iActId] = c_blue
                }
                evtId = actMayor.EvtNext;
                evtName = evtId.strNombre;
                iActId = Evento_PrevInternalActId(evtId, actMayor)
                if iActId != noone and instance_exists(iActId)
                {
                    evtId.prevActColor[varId,iActId] = c_blue
                }
                //evtId.nextActColor[Evento_InternalActId(evtId, actMayor)] = c_blue
            }
            else
            {
                Console_TextAdd("[0x1]PERT CPM no puede ser ejecutado si el grafo esta incompleto.", c_red)
                Grafo_ResetValues()
                return false;
            }
        }
        else if evtName != argument1 // WHAT TO DO ON INTERNAL NODE
        {
            if evtId.ES[varId] == 0
            {
                actId = Evento_GetActPrevMayor(evtId, varId)
                if actId != noone and instance_exists(actId)
                {
                    evtId.ES[varId] = real(actId.varValue[varId])
                    iActId = Evento_PrevInternalActId(evtId, actId)
                    if iActId != noone and instance_exists(iActId)
                    {
                        evtId.prevActColor[varId,iActId] = c_blue
                    }
                }
            }
            if evtId.nextActCount >= 0
            {
                for(var i = 0; i <= evtId.nextActCount; i++)
                {
                    actId = evtId.nextAct[i]
                    if actId != noone and instance_exists(actId)
                    {
                        var evtIdnext;
                        evtIdnext = actId.EvtNext;
                        if evtIdnext != noone and instance_exists(evtIdnext)
                        {
                        
                            if evtIdnext.ES[varId] == 0
                            {
                                evtIdnext.ES[varId] = real(actId.varValue[varId]) + evtId.ES[varId]
                            }
                        }
                    }
                } // for
            }
            
            actId = Evento_GetActNextMayor(evtId, varId)
            if actId != noone
            {   
                iActId = Evento_NextInternalActId(evtId, actId)
                if iActId != noone and instance_exists(iActId)
                {
                    evtId.nextActColor[varId,iActId] = c_blue
                }
                evtId = actId.EvtNext;
                evtName = evtId.strNombre;
                iActId = Evento_PrevInternalActId(evtId, actId)
                if iActId != noone and instance_exists(iActId)
                {
                    evtId.prevActColor[varId,iActId] = c_blue
                }
                
                
            }
            else
            {
                Console_TextAdd("[0x2]PERT CPM no puede ser ejecutado si el grafo esta incompleto.", c_red)
                Grafo_ResetValues()
                return false;
            }
        } // Internal Node Actions
    } // Main While
    
    // Late Finish calculation
    evtId = Evento_id(argument1)
    evtName = evtId.strNombre;
    evtId.LF[varId] = evtId.ES[varId]
    with(evtId)
    {
        event_user(0)
    }
    //while(evtId.strNombre != argument0)
    //{
        // CALCULACION DE LF 
        var EvtList, evtIdx, evtIdxx;
        EvtList = Evento_ListaIgnoring(argument0, argument1, 0)
        for(var i = 0; i < ds_list_size(EvtList); i++)
        {
            evtIdx = ds_list_find_value(EvtList, i)
            actId = Evento_GetActNextMenor(evtIdx, varId)
            if evtIdx.ES[varId] == 0 // Fix para ES == 0
            {
                actId = Evento_GetActPrevMenor(evtIdx, varId)
                if actId != noone
                {
                    var evtIdPrevAct;
                    evtIdPrevAct = actId.EvtPrev;
                    evtIdx.ES[varId] = real(actId.varValue[varId]) + evtIdPrevAct.ES[varId]
                }
            }
            
            if actId != noone
            {
                evtIdxx = actId.EvtNext;
                evtIdx.LF[varId] =  evtIdxx.ES[varId] - real(actId.varValue[varId]) // testing abs
                if (evtIdx.LF[varId] < 0)
                {
                    Console_TextAdd("[0x3]PERT CPM no puede ser ejecutado si el grafo esta incompleto.", c_red)
                    Grafo_ResetValues()
                    return false;
                }
                with(evtIdx)
                {
                    event_user(0)
                }
            }
            
        }
    //}

} // Main If
else
{
    Console_TextAdd("[0x4]PERT CPM no puede ser ejecutado si los argumentos dados son invalidos.", c_red)
}

