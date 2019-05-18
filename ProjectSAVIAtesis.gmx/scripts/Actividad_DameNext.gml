/* Actividad_DameNext(actividad, index, variable)

    Retorna:
        Id del Next
*/

var actId; 
actId = Actividad_id(argument0)

if instance_exists(actId)
{
    with(actId){
        return next[Actividad_VariableId(argument0, argument2),argument1];
    }
}
return -1;
