///physics_move_collide(dx,dy,collision object)
var dx,dy;
dx = argument0;
dy = argument1;
colisionObject = argument2;
if object_exists(colisionObject)
{
    var sx,sy;
    sx = 1*sign(dx);
    sy = 1*sign(dy);
    
    if (dx!=0) 
    {
        for(var i=0;i<abs(dx);i++)
        {
            if !place_meeting(x+sx,y,colisionObject)
            {
                x += sx;
            }
            else break;
        }
    }
    
    if (dy!=0)
    {
        for(var j=0;j<abs(dy);j++)
        {
            if !place_meeting(x,y+sy,colisionObject)
            {
                y += sy;
            }
            else break;
        }
    }
}