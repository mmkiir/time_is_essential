extends "res://items/item.gd"

func _process(delta):
	if Global.dict_state.BOX_OPENED and not Global.dict_state.TOY_TAKEN:
		show()
	else:
		hide()

func _on_click():
	Global.dict_state.TOY_TAKEN = true
	$AudioStreamPlayer2D.play()
