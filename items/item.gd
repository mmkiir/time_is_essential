extends Node2D


var _mouse_inside_area = false


func _on_click():
	pass


func _process(delta):
	if Input.is_action_pressed("ui_touch") and _mouse_inside_area:
		_on_click()


func _on_Area2D_mouse_entered():
	_mouse_inside_area = true


func _on_Area2D_mouse_exited():
	_mouse_inside_area = false
