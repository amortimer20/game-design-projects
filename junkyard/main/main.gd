extends Node2D

# The only script in Unit 1. Every line of it is explained in Unit 2 -- for now,
# type it in and watch what it does.

const BALL_SCENE := preload("res://ball/ball.tscn")
const LAUNCH_POINT := Vector2(90.0, 430.0)
const LAUNCH_POWER := 1500.0


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		_launch_ball(event.position)


func _launch_ball(target: Vector2) -> void:
	var ball := BALL_SCENE.instantiate()
	ball.position = LAUNCH_POINT
	add_child(ball)
	ball.apply_central_impulse(LAUNCH_POINT.direction_to(target) * LAUNCH_POWER)
