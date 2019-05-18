/* Actividad_Crear((String)nombre)
*/
if !Actividad_Existe(argument0) and Variable_Hay()
{
    with(instance_create(objConsola.x,objConsola.y,objActividad))
    {
        strNombre = argument0
        event_user(0)
    }
    Console_TextAdd("Actividad Creada: "+argument0 + "(Posicionando...)", c_black)
}
else
{
    Console_TextAdd("La actividad que intento crear ya existe o no existen variables.",c_red)
}
