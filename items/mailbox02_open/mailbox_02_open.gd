extends "res://items/item.gd"

func _process(delta):
	if Global.dict_state.MAILBOX02_OPENED:
		show()
	else:
		hide()


func _on_click():
	$"/root/Game".set_overlay("res://items/overlay_paper05/overlay_paper05.tscn")
	$AudioStreamPlayer2D.play()
