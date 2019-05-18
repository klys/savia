/* Grafo_PCM(act_inicio, act_fin, variable)

    Paramatros:
        arg 0 - act_inicio
        arg 1 - act_fin
        arg 2 - variable
*/

var actActual, actId1, actId2, actId3, mayor, count, actMayor, antValue, ignoreList, useAntValue, actFinal, VariableName;
ignoreList = ds_list_create()
useAntValue = false;
show_debug_message("[Dbg->CPM] script Begin")
actActual = argument[0];
actFinal = argument[1];
VariableName = argument[2]; // Not in use
antValue = -1;
while(Actividad_DameNextCount(actActual, VariableName) >= 0)
{
    show_debug_message("[Dbg->CPM] Iterando... (actActual:'"+actActual+"')")
    count = 0;
    mayor = 0;
    actMayor = -1;
    for (var i = 0; Actividad_DameNextCount(actActual, VariableName) >= i; i++)
    {
        actId2 = Actividad_DameNext(actActual, i, VariableName);
        
        if (actId2 > 0)
        {
            show_debug_message("[Dbg->CPM] actId2.varValue["+string(VariableName)+"]: '"+string(actId2.varValue[Actividad_VariableId(actActual, VariableName)]) + "' ("+string(actId2)+":"+actId2.nombre+")")
            if (real(actId2.varValue[Actividad_VariableId(actActual, VariableName)]) > mayor)
            {
                actMayor = actId2;
                mayor = real( actId2.varValue[Actividad_VariableId(actActual, VariableName)]);
            }
            else
            {
                ds_list_add(ignoreList,actId2.nombre)
            }
        }
    }
    //show_debug_message("[Dbg->CPM] actMayor: "+string(actMayor)+":"+actMayor.nombre+" / Actividad_DameNextCount(actActual:'"+actActual.nombre+"'): "+string(Actividad_DameNextCount(actActual)))
    if (actMayor > 0)
    {
        
        actId1 = Actividad_id(actActual);
        
        if ds_list_find_index(ignoreList, actMayor.nombre) < 0
        {
        /*
        if antValue > 0
        {
            show_debug_message("[Dbg->CPM] Using antValue.")
            actMayor.nextVar[Actividad_VariableId(actMayor.nombre, argument2)] = real(antValue) + real( actMayor.varValue[Actividad_VariableId(actMayor.nombre, argument2)])
        }
        else
        {
        */
            if useAntValue == false
            {
                actMayor.nextVar[Actividad_VariableId(actMayor.nombre, VariableName)] = real(actId1.nextVar[Actividad_VariableId(actActual, VariableName)]) + real( actMayor.varValue[Actividad_VariableId(actMayor.nombre, VariableName)])
                show_debug_message("[Dbg->CPM] (actId1.nextValue[] '"+string(actId1.nextVar[Actividad_VariableId(actActual, VariableName)])+"' + actMayor.varValue[] '"+string(actMayor.varValue[Actividad_VariableId(actMayor.nombre, VariableName)])+"') nextVar["+actMayor.nombre+":"+actMayor.variable[Actividad_VariableId(actMayor.nombre, VariableName)]+"] "+string(actMayor.nextVar[Actividad_VariableId(actMayor.nombre, VariableName)]))
                antValue = actMayor.nextVar[Actividad_VariableId(actMayor.nombre, VariableName)];
                useAntValue = false;
            }
            else
            {
                actMayor.nextVar[Actividad_VariableId(actMayor.nombre, VariableName)] = real( actMayor.varValue[Actividad_VariableId(actMayor.nombre, VariableName)]) + antValue;
                show_debug_message("[Dbg->CPM] (antValue("+string(antValue)+") + actMayor.varValue[]) nextVar["+actMayor.nombre+":"+actMayor.variable[Actividad_VariableId(actMayor.nombre, VariableName)]+"] "+string(actMayor.nextVar[Actividad_VariableId(actMayor.nombre, VariableName)]));
                useAntValue = false;
            }
        //}
        }
        else
        {
            show_debug_message("[Dbg->CPM] actMayor: esta en ignoreList!")
            useAntValue = true;
        }
        
        
            
        
        actActual = actMayor.nombre;
    }
    /*
    else if (Actividad_DameNextCount(actActual) == 0)
    {
        
        actId3 = Actividad_DameNext(actActual, 0, argument2);
        antValue = Actividad_GetVariableValue(actActual, argument2)
        actActual = actId3.nombre;
        show_debug_message("[Dbg->CPM] Setting antValue.")
    }
    */
    if (actActual == actFinal) break;
}
show_debug_message("[Dbg->CPM] end script.")

