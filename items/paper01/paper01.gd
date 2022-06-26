extends "res://items/item.gd"


func _on_click():
	$"/root/Game".set_overlay("res://items/overlay_paper01/overlay_paper01.tscn")
