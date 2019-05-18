/* Actividad_TieneVariables(nombre)
    Verifica la existencia de variables en
    una actividad

    return: boolean
*/
var actId;
if Actividad_Existe(argument0)
{
    actId = Actividad_id(argument0)
    with(actId)
    {
        if vCount >= 0
        {
            return true;
        }
    }   
}
return false;
