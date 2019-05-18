/* Evento_Crear()

    Crea el evento.
*/

with(instance_create(objConsola.x,objConsola.y,objEvento))
{
    var ID, strNtest;
    ID = Evento_Num(0)
    strNtest = strNombre + string(ID)
    //strNombre = strNombre + string(ID)
    //event_user(0)
    while(Evento_Existe(strNtest))
    {
        ID++;
        strNtest = strNombre + string(ID)
    }
    strNombre = strNtest;
    event_user(0)
}
