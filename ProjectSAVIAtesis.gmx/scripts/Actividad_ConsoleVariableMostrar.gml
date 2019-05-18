/* Actividad_ConsoleVariableMostrar(ActNombre)
*/
var actId;
if Actividad_Existe(argument0) and Actividad_TieneVariables(argument0)
{
    actId = Actividad_id(argument0)
    with(actId)
    {
        Console_TextAdd("Actividad: "+strNombre+", variables:", c_black)
        for(var i = 0; i <= vCount; i++)
        {
            Console_TextAdd("v["+string(i)+"]: "+varName[i] +" = "+varValue[i], c_black)
        }
    }
}
else
{
    Console_TextAdd("Esta actividad o no existe o no tiene variables.",c_red)
}
