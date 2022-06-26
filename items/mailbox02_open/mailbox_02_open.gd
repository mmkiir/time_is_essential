extends "res://items/item.gd"

func _process(delta):
	
	if Global.dict_state.MAILBOX02_OPENED:
		show()
	else:
		hide()
