// @Obosoleto
/* Actividad_VariableExiste(nombre_act, nombre_Var)
    Varifica la existencia de una variable dentro de una actividad 
    segun sus nombres   

    Return: boolean
*/
var actId;

if Variable_Existe(argument1) and Actividad_Existe(argument0) and Actividad_TieneVariables(argument0)
{
    actId = Actividad_id(argument0)
    with(actId)
    {
        for(var nf = 0; nf <= vCount; nf++)
        {
            if varName[nf] == argument1
            {
                Console_TextAdd("[Dbg]Actividad_VariableExiste("+argument0+", "+argument1+"): TRUE", c_black)
                return true;
            }
        }
    }
}
Console_TextAdd("[Dbg]Actividad_VariableExiste("+string(argument0)+", "+string(argument1)+"): FALSE", c_green);
return false;
