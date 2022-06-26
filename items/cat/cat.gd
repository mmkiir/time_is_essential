extends "res://items/item.gd"

func _process(delta):
	
	if not Global.dict_state.TOY_TAKEN:
		show()
	else:
		hide()
