/* Win_CloseWindow(parent id)
*/

if instance_exists(argument0)
{
    var bx;
    bx = Win_GetMyXButton(argument0)
    if bx != noone
    {
        with(bx)
        {
            event_user(0)
        }
    }
    else
    {
        with(bx)
        {
            event_user(0)
        }
    }
}
