/* Variable_Nombre(id)
*/


with(objGrafoControl)
{
    if argument0 <= vars and argument0 >= 0
    {
        return varName[argument0];
    }
}

return "";
