/* Evento_SetLast(strNombre)
*/

if Evento_Existe(argument0)
{
    with(objGrafoControl)
    {
        lastEvt = argument0
    }
    with(objEvento)
    {
        if titulo == "Final"
        {
            titulo = ""
        }
        if argument0 == strNombre
        {
            titulo = "Final"
        }
    }
    Console_TextAdd("Ultimo Evento "+argument0,c_green)
}
