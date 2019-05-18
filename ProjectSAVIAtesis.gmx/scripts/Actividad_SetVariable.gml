/* Actividad_SetVariable(nombre_Act, variable, value)
*/
var actId;
if Actividad_Existe(argument0) and Variable_Existe(argument1) //and !Actividad_VariableExiste(argument0,argument1)
{
    actId = Actividad_id(argument0)
    with(actId)
    {
        //var varId;
        //varId = Variable_id(argument1)
        //vCount++;
        for(var i = 0; i <= vCount; i++)
        {
            if argument1 == varName[i]
            {
                //varName[vCount] = argument1
                varValue[i] = argument2
            }
        }
        event_user(0)
        
    }
    Console_TextAdd("[Actividad_SetVariable]Se configuro el valor de la variable "+argument1+" en la actividad "+argument0+" con el valor "+string(argument2),c_green)
}
else
{
    Console_TextAdd("[Actividad_SetVariable]La variable o la actividad no existen.",c_red)
}
