extends "res://items/item.gd"


func _process(delta):
	if Global.dict_state.BOX_OPENED == false:
		show()
	if Global.dict_state.BOX_OPENED == true:
		hide()


func _on_click():
	Global.dict_state.BOX_OPENED = true
	$AudioStreamPlayer2D.play()



