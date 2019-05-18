/* Actividad_All_SetMostrarVar (VarName)
*/

with(objElemento)
{
    mostrarVarId = Actividad_VariableId(self.nombre, argument0)
}
Console_TextAdd("Var: "+argument0+" mostrandose en el grafo...")
