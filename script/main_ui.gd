extends Control

var button_state : int
var button_assignment : Array = Array()
func _ready() -> void:
	button_assignment = [fightbutton, actbutton, itembutton, mercybutton]

func _physics_process(delta: float) -> void:
	button_check()
	button_anim_ctrl(button_state)
	
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("left"):
		button_state -= 1
	elif Input.is_action_just_pressed("right"):
		button_state += 1
	clampi(button_state, 0, 3)
	
@export var fightbutton : AnimatedSprite2D
@export var actbutton : AnimatedSprite2D
@export var itembutton : AnimatedSprite2D
@export var mercybutton : AnimatedSprite2D
func button_check():
	if button_state == 0:
		print("fight")
	if button_state == 1:
		print("act")
	if button_state == 2:
		print("item")
	if button_state == 3:
		print("mercy")

func button_anim_ctrl(button_state):
	for i in button_assignment.size():
		var button_sprite : AnimatedSprite2D = button_assignment[i]
		if i == button_state:
			button_sprite.animation = "active"
		else:
			button_sprite.animation = "default"
