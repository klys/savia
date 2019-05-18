/* Grafo_ResetValues()
*/
with(objEvento)
{
    for(var i = 0; i <= nextActCount; i++)
    {
        nextActColor[i] = c_black
    }
    for(var i = 0; i <= prevActCount; i++)
    {
        prevActColor[i] = c_black
    }
    for(var i = 0; i <= 20; i++)
    {
        ES[i] = 0
        LF[i] = 0
    }
    event_user(0)
}

Console_TextAdd("Pert Values del Grafo han sido reseteados",c_green)
