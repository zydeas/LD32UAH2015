///room_catalouge_tiles()

var gridw = 8;

var grid = ds_grid_create(gridw,1);
var tiles = tile_get_ids();

if tile_get_count() > 0
{
    for(var i = 0;i<array_length_1d(tiles);i++)
    {
        var tile = tiles[i];     
        grid[# CAT_TILE_BACK,i]   = tile_get_background(tile);
        grid[# CAT_TILE_X,i]      =          tile_get_x(tile);
        grid[# CAT_TILE_Y,i]      =          tile_get_y(tile);
        grid[# CAT_TILE_LEFT,i]   =       tile_get_left(tile);
        grid[# CAT_TILE_TOP,i]    =        tile_get_top(tile);
        grid[# CAT_TILE_WIDTH,i]  =      tile_get_width(tile);
        grid[# CAT_TILE_HEIGHT,i] =     tile_get_height(tile);
        grid[# CAT_TILE_DEPTH,i]  =      tile_get_depth(tile);
        
        ds_grid_resize(grid,gridw,ds_grid_height(grid)+1);
    }
    //Cut off the bottom row so 
    ds_grid_resize(grid,gridw,ds_grid_height(grid)-1);
}
return grid;
