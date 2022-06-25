extends "res://items/item.gd"

func _process(delta):
	._process(delta)
	
	if Global.dict_state.BOX_OPENED and Global.dict_state.TOY_TAKEN:
		show()
	else:
		hide()
