extends Control

var button_state : int
func _process(delta):
		pass

# 1 = fight
# 2 = act
# 3 = item
# 4 = mercy
func _input(event: InputEvent) -> void:
	button_check()
	if Input.is_action_just_pressed("left"):
		if button_state <= 4:
			button_state += 1
	elif Input.is_action_just_pressed("right"):
		if button_state >= 1:
			button_state -= 1

@export var fightbutton : AnimatedSprite2D
func button_check():
	if button_state == 1:
		fightbutton.animation = "active"
		print("fight")
	if button_state == 2:
		print("act")
	if button_state == 3:
		print("item")
	if button_state == 4:
		print("mercy")
