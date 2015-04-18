///physics_move_collide(dx,dy,collision object,movable object)
var dx,dy;
dx = argument0;
dy = argument1;
colisionObject = argument2;
moveableObject = argument3;

if object_exists(colisionObject)
{
    sx = 1*sign(dx);
    sy = 1*sign(dy);
    var moveObject = NULL;
    
    if (dx!=0) 
    {
        for(var i=0;i<abs(dx);i++)
        {
            if !place_meeting(x+sx,y,colisionObject)
            {
                if !place_meeting(x+sx,y,moveableObject)
                {
                    x += sx;
                }
                else
                {
                    var ii = 0;
                    do 
                    {
                        moveObject = instance_place(x+sx,y,moveableObject);
                        with moveObject
                        {
                            if !place_meeting(x+other.sx,y,solid_obj)
                            {
                                x += other.sx;
                            }
                        }
                        
                        ii++
                    } until (!place_meeting(x+sx,y,moveableObject) or ii > 24)
                    
                    x += sx/2;
                }
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
                if !place_meeting(x,y+sy,moveableObject)
                {
                    y += sy;
                }
                else
                {
                     ii = 0;
                    do 
                    {
                        moveObject = instance_place(x,y+sy,moveableObject);
                        moveObject.y += sy;
                        ii++
                    } until (!place_meeting(x,y+sy,moveableObject) or ii > 24)
                    
                    y += sy/2;
                }
            }
            else break;
        }
    }
}
