/**
     * Funcion que parsea un string con la ayuda del token dado y con la 
     * cantidad indicada de N intentos
     * @param str Cadena de Caracteres a Parsear
     * @param token Caracter que se usara para ayudar a parsear
     * @param N Cantidad de tokens a ignorar
     * @param ignore modo de uso
     * @return retorna la cadena de caracteres subtraida de str que se requiera 
     * parsear segun los parametros, en caso de ser mal usada devolvera ""
     */
    //public static String string_single_parse (String str, String token, int N, boolean ignore)
    //{
                /*
        **      string_parse_single(str,token,N,ignore_null)
        **  Example:
        **      string_parse_single("cat|dog|house|bee", "|", 2, true);
        **      returns "dog"
        */
        
        var str, token, substr, ignore, N, tlen, temp, i;
        
        str = argument0;
        token = argument1;
        N = argument2;
        ignore = argument3;
        var tlen, i, temp;
        var substr;
        tlen = string_length (token);
        
        substr = "";
        i = 0;
        while( string_length(str) != 0 && i < N) {
            temp = string_pos( token, str);
            //temp = str.indexOf(token);
            if(temp != -1) {
                if( temp != 1 || !ignore) {
                    substr = string_copy(str, 1, temp - 1);
                    //substr = str.substring(0, temp );
                    i += 1;
                }
                str = string_copy( str, temp + tlen, string_length( str));
                //str = str.substring(temp + tlen, str.length());
            }
            else {
                substr = str;
                i += 1;
                str = "";
            }
        }

        if( i != N) return "";
        else return substr;
        

    //} // string_single_parse
