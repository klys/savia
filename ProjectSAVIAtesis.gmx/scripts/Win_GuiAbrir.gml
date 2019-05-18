/* Win_GuiAbrir()
*/

with(instance_create(view_wview[0]/2-100,view_hview[0]/2-100,WinMsg))
{
    caption = "Antes de Abrir..."
    elem[0].text = "¿Desea guardar su actual #progreso?"
    nelem = 3
    elem[1] = instance_create(x,y,objBoton_AbrirSi)
        with(elem[1])
        {
            parent = other.id
            px = 10
            py = 110
            parentPos = true
        }
    elem[2] = instance_create(x,y,objBoton_AbrirNo)
        with(elem[2])
        {
            parent = other.id
            px = 64
            py = 110
            parentPos = true
        }
    elem[3] = instance_create(x,y,objBoton_GuiCancelar)
        with(elem[3])
        {
            parent = other.id
            px = 64+64
            py = 110
            parentPos = true
        }
    event_user(0)
}

