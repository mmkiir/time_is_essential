extends "res://items/item.gd"

func _process(delta):
	._process(delta)
	
	if Global.dict_state.BOX_OPENED == false:
		hide()
		
	if Global.dict_state.BOX_OPENED == true:
		show()
	
