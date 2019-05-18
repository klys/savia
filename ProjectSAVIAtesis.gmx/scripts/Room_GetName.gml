/*  Room_GetName(RoomId)
*/

with(objRoomManager)
{
    if ds_list_size(cuartos) >= argument0
    {
        return room_get_name(ds_list_find_value(cuartos,argument0));
    }
}

return noone;
