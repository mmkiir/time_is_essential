extends "res://items/item.gd"


signal pressed


func _on_click():
	emit_signal("pressed")
