switch(argument0)
{
    case "cargar": 
    case "guardar":
    case "gcargar":
    case "gguardar":
    case "repos": 
    //case "cpm":
    case "help":
    //(/? /help /ayuda /a /h)
    case "?":
    case "ayuda":
    case "a":
    case "h":
    case "reset":
    case "borrar":
    case "reso":
    return false;
    default:
    return true;
}
