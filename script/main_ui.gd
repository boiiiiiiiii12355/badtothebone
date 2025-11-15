extends Control

var button_pressed = false

func _process(delta):
		if Input.is_action_just_pressed("fight"):
			print("fight")
		if Input.is_action_just_pressed("act"):
			print("act")
		if Input.is_action_just_pressed("item"):
			print("item")
		if Input.is_action_just_pressed("mercy"):
			print("mercy")
