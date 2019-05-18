/* Actividad_Borrar(act_name)
*/

if Actividad_Existe(argument0)
{

    //if instance_exists(objEvento)
    {
        with(objEvento)
        {
            var actIdx;
            actIdx = Actividad_id(argument0)
            for(var i = 0; i <= nextActCount; i++)
            {
                if (nextAct[i] == actIdx)
                {
                    nextAct[i] = noone;
                    if (i == nextActCount) nextActCount--;
                }
            }
            for(var j = 0; j <= prevActCount; j++)
            {
                if (prevAct[j] == actIdx)
                {
                    prevAct[j] = noone;
                    if (j == prevActCount) prevActCount--;
                }
            }
            with(actIdx) instance_destroy()
        }
    }
    /*
    else
    {
        var actIdx;
            actIdx = Actividad_id(argument0);
            with(actIdx) instance_destroy();
    }
    */
    
}

if Actividad_Existe(argument0)
{
    var actIdx;
            actIdx = Actividad_id(argument0);
            with(actIdx) instance_destroy();
}
