/* Win_EditarActVarValue(act_nme, var_name, var_value)

    Parametros:
            arg 0 - Nombre de Actividad
            arg 1 - Nombre de Variable
            arg 2 - Valor de la Variable
*/
//if !instance_exists(objBarraWin)
{
    
    with(instance_create(view_wview[0]/2-100,view_hview[0]/2-100,objWinProto)) 
    {
        nelem = 2
        elem[0].text = string(argument2)
        caption = "Editar "+argument0+"("+argument1+")"
        elem[3] = argument0
        elem[4] = argument1
        elem[1] = instance_create(x,y,objLabel)
        with(elem[1])
        {
            text = "Valor de la Variable("+argument1+")"
            parent = other.id
            px = 02
            py = 50
            parentPos = true
            
        }
        elem[2] = instance_create(x,y,objBotonEditarActVarValue)
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
