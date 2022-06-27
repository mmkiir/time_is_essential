extends "res://items/item.gd"


func _on_click():
	$"/root/Game".set_overlay("res://items/overlay_door/overlay_door.tscn")
