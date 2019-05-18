/* Variable_EditarNombre(OldNombre, NewNombre)
*/

if Variable_Existe(argument0)
{
    with(objGrafoControl)
    {
        with(objActividad)
        {
            varName[Variable_id(argument0)] = argument1
        } 
        varName[Variable_id(argument0)] = argument1
        
        Console_TextAdd("Variable '"+argument0+"' cambio a '"+argument1+"'",c_green)
    }
}
else
{
    Console_TextAdd("La variable '"+argument0+"' no existe.",c_red)
}
