var xaxis = argument0;
var yaxis = argument1;
var threshold = argument2;
var magnitude = point_direction(0,0,xaxis,yaxis);
var spd = argument3;

if (magnitude >= threshold) {
    if (!place_meeting(x+xaxis*spd, y+yaxis*spd, solid_obj)) {
        x += xaxis*spd;
        y += yaxis*spd;
    } else if (!place_meeting(x+xaxis*spd, y, solid_obj)) {
        x += xaxis*spd;
    } else if (!place_meeting(x, y+yaxis*spd, solid_obj)) {
        y += yaxis*spd;
    }
}
     
