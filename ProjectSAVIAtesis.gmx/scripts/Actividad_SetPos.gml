/* Actividad_SetPos(actividad, x, y)
*/

var actId;
actId = Actividad_id(argument0)
if (actId != noone)
{
    Console_TextAdd("Pos de "+argument0+" (x:"+string(argument1)+"/y:"+string(argument2)+") actualizado.", c_black)
    with(actId)
    {
        //Nacimiento = false;
        x = real( argument1);
        y = real( argument2); 
        //Console_TextAdd("Pos de "+nombre+": (x:"+string(x)+"/y:"+string(y)+").")
    }
    
}
