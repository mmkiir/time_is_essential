extends "res://items/item.gd"


func _process(delta):
	
	if not Global.dict_state.MAILBOX02_OPENED:
		show()
	else:
		hide()


func _on_click():
	if Global.dict_state.KEY01_TAKEN:
		Global.dict_state.MAILBOX02_OPENED = true
		$AudioStreamPlayer2D.play()
