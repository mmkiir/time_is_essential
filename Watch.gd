extends Node2D


export var WATCH_HAND_REVOLUTION_PERIOD: int = 60 # Seconds
export var WATCH_HAND_SMALL_REVOLUTION_PERIOD: int = 1 # Seconds
export var SWEET_SPOT_ANGLE: float = 30


signal timeout


func _ready():
	$Timer.wait_time = WATCH_HAND_REVOLUTION_PERIOD
	$Timer.start()


func _process(delta):
	if (Input.is_action_pressed("ui_accept")
			and $WatchHandSmall.rotation_degrees > 90 - SWEET_SPOT_ANGLE / 2
			and $WatchHandSmall.rotation_degrees < 90 + SWEET_SPOT_ANGLE / 2):
		$WatchHand.rotation_degrees = 0
		$Timer.start()

	$WatchHand.rotation_degrees = fmod(
		$WatchHand.rotation_degrees + 360 / WATCH_HAND_REVOLUTION_PERIOD * delta,
		360)
	$WatchHandSmall.rotation_degrees = fmod(
		$WatchHandSmall.rotation_degrees + 360 / WATCH_HAND_SMALL_REVOLUTION_PERIOD * delta,
		360)


func _on_Timer_timeout():
	emit_signal("timeout")
	
