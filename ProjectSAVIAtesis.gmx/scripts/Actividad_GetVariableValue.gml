/* Actividad_GetVariableValue(actividad_name, variable_name)
*/

var actId, varId;

actId = Actividad_id(argument0)

if (actId != noone) and Actividad_VariableExiste(argument0, argument1)
{
    with(actId)
    {
        return varValue[Actividad_VariableId(argument0,argument1)];
    }
}
