extends Control

var button_state : int
var button_assignment : Array = Array()
func _ready() -> void:
	button_assignment = [fightbutton]
# 0 = fight
# 1 = act
# 2 = item
# 3 = mercy
func _input(event: InputEvent) -> void:
	button_check()
	button_anim_ctrl(button_state)
	if Input.is_action_just_pressed("left"):
		if button_state <= 3:
			button_state += 1
	elif Input.is_action_just_pressed("right"):
		if button_state >= 0:
			button_state -= 1

@export var fightbutton : AnimatedSprite2D
func button_check():
	if button_state == 1:
		print("fight")
	if button_state == 2:
		print("act")
	if button_state == 3:
		print("item")
	if button_state == 4:
		print("mercy")

func button_anim_ctrl(button_state):
	for i in button_assignment.size():
		var button_sprite : AnimatedSprite2D = button_assignment[button_state]
		if i == button_state:
			button_sprite.animation = "active"
		else:
			button_sprite.animation = "default"
