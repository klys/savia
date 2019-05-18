/* Join2Elements(obj1,obj2, color)
    Une dos elementos. (objElemento)
    
    Parametros:
            arg 0 - obj1
            arg 1 - obj2
            arg 2 - color de la linea
*/

with(argument0)
{
    LineCount++;
    ds_grid_add(LineList,0,LineCount,argument1)
    ds_grid_add(LineList,1,LineCount,argument2)
    //ds_grid_add(LineList,2,LineCount,"")
}

with(argument1)
{
    LineCount++;
    ds_grid_add(LineList,0,LineCount,argument0)
    ds_grid_add(LineList,0,LineCount,argument2)
    //ds_grid_add(LineList,2,LineCount,"")
}

