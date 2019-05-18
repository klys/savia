/* LS_open_cmds(0)
*/

var fName, fid;
fName = get_open_filename("Graph File Project|*.gfp", "Grafo")

if (fName != "")
{
    objLoadSaver.Opening = true;
    var file = file_text_open_read(fName);
    with(objLoadSaver)
    {
        ds_list_read(Main, file_text_read_string(file))
        event_user(0)
    }
    file_text_close(file)
    Console_TextAdd("Archivo cargado: "+string(fName), c_green)
    objLoadSaver.Guardado = true
    objLoadSaver.Ruta = string(fName)
    Grafo_SetNombre(file_string_getfname(string(fName)))
}
else
{
    Console_TextAdd("Archivo no fue cargado!", c_green)
    objLoadSaver.Guardado = false
    objLoadSaver.Ruta = ""
}
