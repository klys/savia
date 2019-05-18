/* string_pixelMitad(str Text)

    Este script devuelve la mitad de los pixeles del string recibido.

    Parametros:
            arg 0 - Texto (String)    
    Return:
            Double (Mitad de los pixeles del Str Recibido)
*/

var n;
n = string_width_ext(argument0,-1,-1)
return (n/2);
