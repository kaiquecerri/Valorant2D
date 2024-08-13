#region keys
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))
left_mouse = mouse_check_button(mb_left)
key_reload = keyboard_check_pressed(ord("R"))

//armas
key_primary = keyboard_check_pressed(ord("E"))
key_sidearm = keyboard_check_pressed(ord("Q"))
key_knife = keyboard_check_pressed(3)

//habilidades

key_hability1 =  keyboard_check(ord("C"))
key_hability2 =  keyboard_check(ord("Q"))
key_hability3 =  keyboard_check(ord("E"))
key_ultimate =  keyboard_check(ord("X"))

#endregion

#region movimentação
hmove = key_right - key_left
vmove = key_down - key_up 


hspeed = hmove * spd
vspeed = vmove * spd

image_angle = point_direction(x,y,mouse_x,mouse_y)

#endregion

#region armas



inventory[selected].image_angle = image_angle
inventory[selected].x = x
inventory[selected].y = y


#endregion



