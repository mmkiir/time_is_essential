extends "res://items/item.gd"

func _process(delta):
	._process(delta)
	
	if Global.dict_state.MAILBOX01_OPENED and Global.dict_state.KEY01_TAKEN:
		show()
	else:
		hide()
