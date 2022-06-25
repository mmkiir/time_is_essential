extends "res://items/item.gd"


func _process(delta):
	._process(delta)
	
	if not Global.dict_state.CARPET_MOVED:
		show()
	else:
		hide()


func _on_click():
	Global.dict_state.CARPET_MOVED = true 
