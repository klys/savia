/* Grafo_CPM(evt_inicial, evt_final, variable_nombre)
    
    Script que intenta calcular PERT en el grafo dado su evento inicial,
    evento final y la variable que se desea calcular.

    Parametros:
            arg 0 - evt_inicial, nombre del evento inicial (Ej: 'Evt.1')
            arg 1 - evt_final, Nombre del evento final (Ej: 'Evt.9')
            arg 2 - variable_nombre, nombre de la variable a calcular en el grafo.
*/

var evtId, actId;

if Evento_Existe(argument0) and Evento_Existe(argument1) and Variable_Existe(argument2)
{
    evtId = Evento_id(argument0)

} // Main If


