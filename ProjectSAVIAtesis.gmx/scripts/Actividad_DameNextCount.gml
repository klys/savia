/* Actividad_DameNextCount(act_nombre, variable)

    Obtiene la cantidad de actividades proximas de la actividad seleccionada segun la variable
    seleccionada

    Return: 
        Cantidad de Actividades Proximas
        -1 si no hay actividades proximas o si la variable no existe
        
*/

var actId;
actId = Actividad_id(argument0)
//if Actividad_VariableExiste(argument0, argument1)
{
    if (instance_exists(actId))
    {
        with(actId)
        {
            return nextActs[Actividad_VariableId(argument0, argument1)]
        }
    }
}

return -1;
