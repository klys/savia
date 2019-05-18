/* Grafo_Guardar(proyect_name)
*/
var file, fileMon;

file = get_save_filename("Graph File Project|*.gfp", argument0);

fileMon = instance_create(x,y,objFileSaver)
with(fileMon)
{
    
    lineas++;
    fileMon[lineas] = "Graf|"
    with(objGrafoControl)
    {
        for(var i = 0; i <= vars; i++) other.fileMon[other.lineas] += varName[i]+"|"
    }
    
    with(objElemento)
    {
        other.lineas++;
        other.fileMon[other.lineas] = "Act|"+nombre+"|"+string(vCount)
        other.lineas++;
        
        other.fileMon[other.lineas] = "variable|"+nombre+"|"
        for(var i = 0; i <= vCount; i++)
        {
            other.fileMon[other.lineas] += variable[i]+"|"+string(varValue[i])+"|"
        }
        other.lineas++;
        other.fileMon[other.lineas] = "nextActs|"+nombre+"|"
        for(var i = 0; i <= vCount; i++)
        {
            other.fileMon[other.lineas] += nextActs[i]+"|"
        }
        other.lineas++;
        other.fileMon[other.lineas] = "prevActs|"+nombre+"|"
        for(var i = 0; i <= vCount; i++)
        {
            other.fileMon[other.lineas] += prevActs[i]+"|"
        }
        // no terminado
        // falta: next[i,j] // prev[i,j]
    }
}


