extends "res://items/item.gd"


func _process(delta):
	._process(delta)
	
	if Global.dict_state.CARPET_MOVED and not Global.dict_state.KEY02_TAKEN:
		show()
	else:
		hide()


func _on_click():
	Global.dict_state.KEY02_TAKEN = true 
