extends "res://items/item.gd"

func _on_click():
	$"/root/Game".set_overlay("res://items/overlay_paper03/overlay_paper03.tscn")
	$AudioStreamPlayer2D.play()
