extends "res://items/item.gd"


func _process(delta):
	
	if Global.dict_state.MAILBOX01_OPENED == false:
		show()
	else:
		hide()


func _on_click():
	if Global.dict_state.KEY01_TAKEN:
		Global.dict_state.MAILBOX01_OPENED = true
		$AudioStreamPlayer2D.play()
