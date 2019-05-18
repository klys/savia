/* Evento_SetFirst(strNombre)
*/

if Evento_Existe(argument0)
{
    with(objGrafoControl)
    {
        firstEvt = argument0
    }
    with(objEvento)
    {
        if titulo == "Inicio"
        {
            titulo = ""
        }
        if argument0 == strNombre
        {
            titulo = "Inicio"
        }
    }
    Console_TextAdd("Primer Evento: " + argument0,c_green)
}
