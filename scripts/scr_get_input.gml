///scr_get_input

// Set keys as local variables
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord('C'));

// Get axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// Check for gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, 0.35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
}
