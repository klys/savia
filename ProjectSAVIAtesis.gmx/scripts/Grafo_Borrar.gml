/* Grafo_Borrar()

    Borra todos las actividades y eventos, asi como tambien las variables.
    Y ademas vacia la lista de comandos.
*/

with(objGrafoControl)
{
    vars = -1
}

with(objEvento)
{
    instance_destroy()
}

with(objActividad)
{
    instance_destroy()
}

with(objLoadSaver)
{
    ds_list_clear(Main)
}

Console_TextAdd("Grafo y sus elementos borrados correctamente.",c_red)
