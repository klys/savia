/* Grafo_CPMEvtExists()

    Este script verifica que firstEvt y lastEvt existan.
    
    Retorna:
            boolean
*/

with(objGrafoControl)
{
    //if firstEvt != noone and lastEvt != noone
    if Evento_Existe(firstEvt) and Evento_Existe(lastEvt)
    {
        return true;
    }
}

return false;
