/* Variable_id(varName)
*/

with(objGrafoControl)
{
    
    for(var i = 0; i <= vars; i++)
    {
        if (varName[i] == argument0) return i;
    }
    
}

return noone;
