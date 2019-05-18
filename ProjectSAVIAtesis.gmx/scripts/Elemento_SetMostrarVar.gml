/* Actividad_All_SetMostrarVar (VarName)
*/

if Variable_Existe(argument0)
{

    with(objActividad)
    {
        if mostrarVarId <= vCount
        {
            mostrarVarId = Variable_id(argument0)
        }
        else
        {
            Console_TextAdd("en Actividad '"+strNombre+"' no se encontro variable '"+argument0+"'.",c_red)
        }
    }
    with(objEvento)
    {
        
        mostrarVarId = Variable_id(argument0)
        
    }
    Console_TextAdd("Variable "+argument0+" mostrandose en el grafo...", c_red)

}
