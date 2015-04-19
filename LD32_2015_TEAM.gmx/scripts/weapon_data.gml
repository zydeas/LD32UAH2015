///weapon_data(weapon id)

var wid = argument0;
if ds_map_exists(global.weaponMap,wid)
{
    var map = ds_map_find_value(global.weaponMap,wid);
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
