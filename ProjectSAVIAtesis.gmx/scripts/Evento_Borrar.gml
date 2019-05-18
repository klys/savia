/* Evento_Borrar(strNombre)
*/

if Evento_Existe(argument0)
{
    var evtId;
    evtId = Evento_id(argument0)
    with(evtId) instance_destroy()
}
