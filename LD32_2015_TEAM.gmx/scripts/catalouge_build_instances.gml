///catalouge_build_instances(source,x,y)
var source = argument0;
var xx = argument1;
var yy = argument2;

if ds_map_exists(global.building_catalouge,source)
{
    var building = global.building_catalouge[? source];
    
    //Add tiles
    if building[? CAT_TILES] != NULL
    {
        var tiles = building[? CAT_TILES];
        
        for(var i=0;i<ds_grid_height(tiles);i++)
        {
            if background_exists(tiles[# CAT_TILE_BACK,i])
            {
                tile_add(   tiles[# CAT_TILE_BACK,i],
                            tiles[# CAT_TILE_LEFT,i],
                            tiles[# CAT_TILE_TOP,i],
                            tiles[# CAT_TILE_WIDTH,i],
                            tiles[# CAT_TILE_HEIGHT,i],
                            tiles[# CAT_TILE_X,i]+xx,
                            tiles[# CAT_TILE_Y,i]+yy,
                            tiles[# CAT_TILE_DEPTH,i]);
            }
        }
    }
    
    var o;
    //Add instances
    if building[? CAT_INSTANCES] != NULL
    {
        var ins = building[? CAT_INSTANCES];
        
        for(var j=0;j<ds_grid_height(ins);j++)
        {
            if object_exists(ins[# CAT_INS_OBJID,j])
            {
                o = instance_create(ins[# CAT_INS_X,j]+xx,ins[# CAT_INS_Y,j]+yy,ins[# CAT_INS_OBJID,j])
                
                o.image_xscale = ins[# CAT_INS_SCALEX,j];
                o.image_yscale = ins[# CAT_INS_SCALEY,j];
            }
        }
    }
    
}
