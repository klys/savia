/* Grafo_VerVariable(varName)
*/

if Variable_Existe(argument0)
{
    with(objElementoParent)
    {
        mostrarVarId = Variable_id(argument0)
    }
    Console_TextAdd("Viendo grafo con variable '"+argument0+"'.", c_green)
}
else
{
    Console_TextAdd("La variable indicada no existe.", c_red)
}
