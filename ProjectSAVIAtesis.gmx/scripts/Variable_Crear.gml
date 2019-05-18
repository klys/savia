/* Variable_Crear(Nombre)
*/

if !Variable_Existe(argument0)
{
    with(objGrafoControl)
    {
        vars ++;
        varName[vars] = argument0
        //varColor[vars] = ???
        Console_TextAdd("Variable Creada: "+varName[vars]+" id: "+string(vars), c_black)
    }
}
