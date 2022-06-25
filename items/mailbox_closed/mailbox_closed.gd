extends "res://items/item.gd"


func _process(delta):
	._process(delta)
	
	if Global.dict_state.MAILBOX01_OPENED == false:
		show()
	else:
		hide()


func _on_click():
	Global.dict_state.MAILBOX01_OPENED = true
