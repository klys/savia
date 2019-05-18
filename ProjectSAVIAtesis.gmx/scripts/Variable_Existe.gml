/* Variable_Existe(nombre_Var)
    Verifica la existencia de una variable globalmente
    mediante su nombre
    
    return: boolean
*/
argument0 = string(argument0)
with(objGrafoControl)
{
    
    for(var nf = 0; nf <= vars; nf++)
    {
        if varName[nf] == argument0
        {
            return true;
        }
    }
}
return false;
