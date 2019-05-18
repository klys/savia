/* Variable_ConsoleMostrar()
*/

with(objGrafoControl)
{
    Console_TextAdd("Cantidad de Variables: "+string(vars+1), c_black)
    for(var nf = 0; nf <= vars; nf ++)
    {
        Console_TextAdd("["+string(nf)+"]"+string(varName[nf]), c_black)
    }
}
