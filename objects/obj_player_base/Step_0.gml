#region keys
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))
left_mouse = mouse_check_button(mb_left)
key_reload = keyboard_check_pressed(ord("R"))

//armas
key_primary = keyboard_check_pressed(1)
key_sidearm = keyboard_check_pressed(2)
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



#endregion

#region tiro


//atirar
function shoot(time){
	if bullets > 0{
	if (delay_per_bullet == 0 && reload_timer  == 0 ){
	bullet_instance = instance_create_layer(x,y,layer,obj_bullet)
	bullet_instance.image_angle = image_angle
	bullet_instance.direction = image_angle
	delay_per_bullet = time
	bullets -= 1
	}
	
	} else {
	reload(150)
	}
}

//recarregar
function reload(_reload_time){
	if pent > 0{
		i = max_bullets_per_pent - bullets
		reload_timer = _reload_time

		if i <= pent{
		pent -= i
		bullets += i
		} else {
		bullets += pent
		pent = 0
		
		}
	} 
		

	
}

delay_per_bullet = delay_per_bullet > 0 ? delay_per_bullet-1 : 0
reload_timer = reload_timer > 0 ? reload_timer-1 : 0

if left_mouse shoot(6) //vandal tiro p/seg
if key_reload reload(150) //vadal reload time

#endregion

