///room_catalouge_instances()

var gridw = 6;

if instance_count > 0
{
    var grid = ds_grid_create(gridw,1);
    var obj,xx,yy,scalex,scaley;
    for(var i = 0;i<instance_count;i++)
    {
        var ins = instance_id[i];
        
        if instance_exists(ins)
        {
            if ins.object_index != object_index
            {                
                obj = ins.object_index;
                xx = ins.x;
                yy = ins.y;
                scalex = ins.image_xscale;
                scaley = ins.image_yscale;
                
                grid[# CAT_INS_OBJID,i] = obj;
                grid[# CAT_INS_X,i] = xx;
                grid[# CAT_INS_Y,i] = yy;
                grid[# CAT_INS_SCALEX,i] = scalex;
                grid[# CAT_INS_SCALEY,i] = scaley;
                grid[# CAT_INS_META,i] = NULL;
                
                ds_grid_resize(grid,gridw,ds_grid_height(grid)+1);
            }
        }
    }
    //Cut off the bottom row so 
    ds_grid_resize(grid,gridw,ds_grid_height(grid)-1);
    
    return grid;
}
else
return NULL;
