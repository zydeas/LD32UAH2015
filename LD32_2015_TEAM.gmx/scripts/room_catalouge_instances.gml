///room_catalouge_instances()

var gridw = 6;

var grid = ds_grid_create(gridw,1);

if ds_exists(grid,ds_type_grid)
{
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
                
                grid[# 0,i] = obj;
                grid[# 1,i] = xx;
                grid[# 2,i] = yy;
                grid[# 3,i] = scalex;
                grid[# 4,i] = scaley;
                grid[# 5,i] = NULL;
                
                ds_grid_resize(grid,gridw,ds_grid_height(grid)+1);
            }
        }
    }
    //Cut off the bottom row so 
    ds_grid_resize(grid,gridw,ds_grid_height(grid)-1);
}

return grid;
