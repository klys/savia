/* Actividad_VariableId(nombre, variable)
    obtiene el id de la variable dentro
    de la actividad
    
    return: (Integer)
*/
var actId;
if Actividad_Existe(argument0) and Actividad_VariableExiste(argument0, argument1)
{
    actId = Actividad_id(argument0)
    with(actId)
    {
        for(var nf = 0; nf <= vCount; nf++)
        {
            if (varName[nf] == argument1) {
                //show_debug_message("[Dbg]Actividad_VariableId("+string(argument0)+", "+string(argument1)+") retorno: "+string(nf))
                return nf;
                
            }
        }
    }   
}
//show_debug_message("[Dbg]Actividad_VariableId("+string(argument0)+", "+string(argument1)+") retorno: 0 [Por Default]")
return 0;
