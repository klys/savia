/* Actividad_Conectar(nombre1,nombre2,variable)
    Este script conecta de nombre1 a nombre2
    next: nombre2
    prev: nombre1
    
    Parametros:
            arg 0 - Nombre de Actividad_1
            arg 1 - Nombre de Actividad_2
            arg 3 - Nombre de Variable
*/

// OBOSOLETO!!!!!!!!!!!!!!!!!!
var actId1, actId2;
if Actividad_Existe(argument0) and 
Actividad_Existe(argument1) and 
Actividad_VariableExiste(argument0, argument2) and 
Actividad_VariableExiste(argument1, argument2)
{
    actId1 = Actividad_id(argument0)
    actId2 = Actividad_id(argument1)
    with(actId1)
    {
        var varId, actId;
        varId = Actividad_VariableId(self.nombre, argument2)
        nextActs[varId]++;
        actId = nextActs[varId];
        next[varId,actId] = Actividad_id(argument1)
    }
    with(actId2)
    {
        var varId, actId;
        varId = Actividad_VariableId(self.nombre, argument2)
        prevActs[varId]++
        actId = prevActs[varId];
        prev[varId,actId] = Actividad_id(argument0)
    }
    Console_TextAdd("Conectados: Act1:"+argument0+" --> Act2:"+argument1+" (Var:"+argument2+")", c_black)
}
else
{
    Console_TextAdd("Las actividades indicada no existen o no contienen las variables necesarias",c_red)
}
