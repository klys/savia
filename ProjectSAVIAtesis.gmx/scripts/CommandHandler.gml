/* CommandHandler(string_cmd)
*/

var cmd, cmdArg, arg, argCant;
argCant = 0;
cmd = string_copy(argument0,2,string_length(argument0)-1)
//cmd = string_replace(cmd," ", "$")

if string_pos(" ",cmd) != 0
{
    cmdArg = string_copy(cmd,string_pos(" ",cmd),string_length(cmd)-string_pos(" ",cmd)+1)
    //Console_TextAdd("argumentos: " + cmdArg)
    cmd = string_copy(cmd,1,string_pos(" ",cmd)-1) // quitar argumentos
    cmdArg = string_replace_all(cmdArg," ","$") + "$"
    //Console_TextAdd(cmdArg)
    for(var ff = 0; ff < string_count("$", cmdArg)-1; ff++)
    {
        arg[ff] = string_single_parse(cmdArg,"$",ff+1,true)
        argCant++;
        //Console_TextAdd("arg["+string(ff)+"]: "+arg[ff])
    }
    
}

if objLoadSaver.Opening == false and cmdIgnore(cmd)
{
    LS_cmd_keep(argument0)
}

//Console_TextAdd("Comando detectado:["+cmd+"]")
switch(cmd)
{
    case "?":
    case "help":
    case "ayuda":
    case "a":
    case "h":
        Console_TextAdd("====== Ayuda ======= (/? /help /ayuda /a /h)", c_green)
        Console_TextAdd("Crear actividad: /cact <nombre> | Mostrarlas: /cact todas | Crear Evento: /cevt", c_red)
        Console_TextAdd("Crear Variable: /cvar <nombre> | Mostrarlas: /cvar todas", c_green)
        Console_TextAdd("Crear Actividad con Variable: /cact <act> <variable> <valor> ", c_red)
        Console_TextAdd("Conectar Evento con Act: /ccact <Event> <act> <next/prev>", c_green)
        Console_TextAdd("Agregar Variable a Actividad: /vact <act> <variable> <valor> ", c_red)
        //Console_TextAdd("Conectar Act-Event: /ccact <Event> <act> <next/prev>", c_green)
        Console_TextAdd("Calcular Ruta Critica: /cpm <evt_inicial> <evt_final> <variable> | Reset Valores: /reset", c_green)
        Console_TextAdd("Guardar: /guardar | Cargar: /cargar ",c_red)
        
    break
    case "cact": // crear actvidad
        if argCant == 1
        {
            if arg[0] != "todas"
            {
                Actividad_Crear(arg[0])
                
            }
            else Actividad_ConsoleMosrtar()
        }
        if argCant == 3
        {
            Actividad_Crear(arg[0])
            Actividad_SetVariable(arg[0],arg[1],arg[2])
        }
    break
    case "cvar": // crear variable
        if argCant > 0
        {
            if arg[0] != "todas"
            {
                Variable_Crear(arg[0])
            }
            else Variable_ConsoleMostrar()
        }
    break
    case "vact": // agregar variable a actividad
        if argCant == 3
        {
            Actividad_SetVariable(arg[0],arg[1],arg[2])
        }
        else Console_TextAdd("Argumentos insuficientes",c_red)
    break
    case "ccact":
        if argCant == 3
        {
            //Actividad_Conectar(arg[0], arg[1], arg[2])
            Evento_Conectar(arg[0], arg[1], arg[2])
        }
        else Console_TextAdd("Argumentos insuficientes",c_red)
    break
    case "cpm":
        if argCant == 3
        {
            Grafo_CPM(arg[0], arg[1], arg[2])
        }
        else Console_TextAdd("Argumentos insuficientes",c_red)
    break;
    case "pos":
        if argCant == 3
        {
            //Actividad_SetPos(arg[0],arg[1],arg[2])
            Elemento_SetPos(Elemento_id(arg[0]), arg[1], arg[2])
        }
    break
    case "cevt":
        Evento_Crear(0)
    break
    case "cargar":
        
        LS_open_cmds()
        
    break
    case "guardar":
    
        LS_save_cmds()
    
    break
    case "reset":
        Grafo_ResetValues()
    break
    case "borrar":
        Grafo_Borrar()
    break
    case "bact":
        if argCant == 1
        {
            Actividad_Borrar(arg[0])
        }
    break
    case "bevt":
        if argCant == 1
        {
            Evento_Borrar(arg[0])
        }
    break
    case "fevt":
        if argCant == 1
        {
            Evento_SetFirst(arg[0])
        }
    break
    case "levt":
        if argCant == 1
        {
            Evento_SetLast(arg[0])
        }
    break
    case "dcact":
    if argCant == 2
    {
        Evento_Desconectar(arg[0],arg[1])
    }
    break
    case "reso":
        if argCant == 0
        {
            Console_TextAdd("Mostrando Variables Graficas Activas:",c_red)
            Console_TextAdd("Tamano del Cuarto: H: "+string(room_height)+" /W: "+string(room_width),c_green)
            var StringViewStatus;
            if view_enabled
            {
                StringViewStatus = "(enable)"
            }
            else
            {
                StringViewStatus = "(disable)"
            }
            Console_TextAdd("Tamano del View: H: "+string(view_hview[view_current])+" / W: "+string(view_wview[view_current])+". ViewStatus:"+StringViewStatus,c_green)
            Console_TextAdd("Tamano de la Ventana Mostrada (ViewPort): H: "+string(view_hport[view_current])+" / W: "+string(view_wport[view_current]),c_green)
        }
        else if argCant == 2
        {
            view_wport[view_current] = real(arg[0])
            view_hport[view_current] = real(arg[1])
            view_wview[view_current] = real(arg[0])
            view_hview[view_current] = real(arg[1])
            window_set_size(real(arg[0]),real(arg[1])) 
            with(objGrafoControl) event_user(0)
            with(objConsola) event_user(1)
            with(objConsoleTextBox) event_user(14)
            //room_restart()
        }
    break
    case "vnam":
        if argCant == 2
        {
            Variable_EditarNombre(arg[0], arg[1])
        }
    break
    case "anam":
        if argCant == 2
        {
            Actividad_EditarNombre(arg[0],arg[1])
        }
    break
    
}
