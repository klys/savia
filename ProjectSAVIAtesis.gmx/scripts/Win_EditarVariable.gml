/* Win_EditarVariable(variable_name)
*/
//if !instance_exists(objBarraWin)
{
    
    with(instance_create(view_wview[0]/2-100,view_hview[0]/2-100,objWinProto)) 
    {
        nelem = 2
        elem[0].text = argument0
        caption = "Editar Variable"
        elem[3] = argument0
        elem[1] = instance_create(x,y,objLabel)
        with(elem[1])
        {
            text = "Nombre de la Variable"
            parent = other.id
            px = 02
            py = 50
            parentPos = true
            
        }
        elem[2] = instance_create(x,y,objBotonEditarVariable)
        with(elem[2])
        {
            parent = other.id
            px = 64
            py = 110
            parentPos = true
        }
        event_user(0)
    }
}
