draw_set_font(fnt_gui)
draw_set_color(c_white)

draw_text(1082,602,string(obj_player_base.inventory[obj_player_base.selected].bullets))
draw_text(1082,652,string(obj_player_base.inventory[obj_player_base.selected].pent))

draw_text(198,602,string(obj_player_base.life))
