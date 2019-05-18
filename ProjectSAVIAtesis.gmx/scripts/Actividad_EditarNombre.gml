/*Actividad_EditarNombre(OldName, NewName)
*/

var actId;
if Actividad_Existe(argument0)
{
    actId = Actividad_id(argument0)
    with(actId)
    {
        strNombre = argument1
        Console_TextAdd("Actividad '"+argument0+"' cambio a '"+argument1+"'",c_green)
    }
}
else
{
    Console_TextAdd("Actividad '"+argument0+"' no existe.",c_red)
}

