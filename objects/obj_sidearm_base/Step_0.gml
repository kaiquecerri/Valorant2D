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

if obj_player_base.left_mouse shoot(6) //vandal tiro p/seg
if obj_player_base.key_reload reload(150) //vadal reload time

#endregion
