extends "res://items/item.gd"


func _process(delta):
	
	if Global.dict_state.CARPET_MOVED and Global.dict_state.KEY01_TAKEN:
		show()
	else:
		hide()
