extends "res://items/item.gd"

func _on_click():
	$"/root/Game".set_overlay("res://items/overlay_paper02/overlay_paper02.tscn")
	$AudioStreamPlayer2D.play()
