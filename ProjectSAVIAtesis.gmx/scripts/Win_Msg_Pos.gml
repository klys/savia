/* Win_Msg_Pos(Titulo, Mensaje,x,y)
*/

with(instance_create(argument2,argument3,WinMsg))
{
    caption = argument0
    elem[0].text = argument1
    event_user(0)
}

