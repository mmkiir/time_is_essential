extends "res://items/item.gd"

export var WATCH_HAND_REVOLUTION_PERIOD: int = 60 # Seconds
export var WATCH_HAND_SMALL_REVOLUTION_PERIOD: float = 1 # Seconds
export var SWEET_SPOT_ANGLE: float = 30


func _on_click():
	$"/root/Game/OverlayWatch".position = Vector2(1024, 0)


func _ready():
	$Timer.wait_time = WATCH_HAND_REVOLUTION_PERIOD
	$Timer.start()


func _process(delta):
	$WatchHand.rotation_degrees = fmod(
		$WatchHand.rotation_degrees + 360 / WATCH_HAND_REVOLUTION_PERIOD * delta,
		360)
	$WatchHandSmall.rotation_degrees = fmod(
		$WatchHandSmall.rotation_degrees + 360 / WATCH_HAND_SMALL_REVOLUTION_PERIOD * delta,
		360)


func _on_Timer_timeout():
	$"/root/Game/OverlayWatch".position = Vector2(1024, 0)
	$"/root/Game".set_default_dict_state()
	$"/root/Game".set_room("res://rooms/room01/room01.tscn")


func _on_OverlayWatchButton_pressed():
	if ($TimerSweetSpot.is_stopped()
			and $WatchHandSmall.rotation_degrees > 90 - SWEET_SPOT_ANGLE / 2
			and $WatchHandSmall.rotation_degrees < 90 + SWEET_SPOT_ANGLE / 2):
		$WatchHand.rotation_degrees = 0
		$Timer.start()
			
	$TimerSweetSpot.start()
