var device = argument0;

if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, 0.05);
xaxis = gamepad_axis_value(device, gp_axislh);
yaxis = gamepad_axis_value(device, gp_axislv);
