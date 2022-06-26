extends "res://items/item.gd"

func _on_click():
	$"/root/Game".set_overlay("res://items/overlay_paper04/overlay_paper04.tscn")
	$AudioStreamPlayer2D.play()
