/* LS_save_cmds()
*/

var fName, str, fid;

fName = get_save_filename("Graph File Project|*.gfp", "Grafo");

if (fName != "")
{
    objLoadSaver.Opening = false
    fid = file_text_open_write(fName);
    str = LS_get_cmdStrings()
    file_text_write_string(fid, str);
    file_text_close(fid);
    Console_TextAdd("Archivo guardado: "+string(fName), c_green)
    objLoadSaver.Guardado = true;
    objLoadSaver.Ruta = string(fName)
    Grafo_SetNombre(file_string_getfname(fName))
}
else
{
    Console_TextAdd("Archivo no se pudo guardar.", c_red)
    objLoadSaver.Guardado = false
    objLoadSaver.Ruta = ""
}
