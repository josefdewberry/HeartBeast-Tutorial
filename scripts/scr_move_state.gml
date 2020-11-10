///scr_move_state

// Get input
scr_get_input();

// Check for dash
if (dash_key) {
    state = scr_dash_state;
    alarm[0] = room_speed/8;
}

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
}

// Get hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control sprite
image_speed = 0.2;
if (len == 0) image_index = 0;

// Vertical sprites
if (vspd > 0) {
    sprite_index = spr_player_down;
} else if (vspd < 0) {
    sprite_index = spr_player_up;
}

// Horizontal sprites
if (hspd > 0) {
    sprite_index = spr_player_right;
} else if (hspd < 0) {
    sprite_index = spr_player_left;
}
