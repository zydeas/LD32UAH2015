///enemy_data(enemy id)

var eid = argument0;
if ds_map_exists(global.enemyMap,eid)
{
    var map = ds_map_find_value(global.enemyMap,eid);
    if ds_exists(map,ds_type_map)
    {
        return map;
    }
    else
    {
        return NULL;
    }
}
else
{
    return NULL;
}