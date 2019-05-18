/* Win_Msg(Titulo, Mensaje)
*/

with(instance_create(view_wview[0]/2-100,view_hview[0]/2-100,WinMsg))
{
    caption = argument0
    elem[0].text = argument1
    event_user(0)
}

