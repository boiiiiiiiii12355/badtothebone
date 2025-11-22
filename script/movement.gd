extends CharacterBody2D

var hp = 100

func _physics_process(delta: float) -> void:
	var dir = Input.get_vector("left", "right", "up", "down")
	var speed = 1000
	velocity = dir * speed
	move_and_slide()

@export var hp_bar : ProgressBar
func hp_mang():
	hp_bar.value = hp

@export var hit_timer : Timer
func hit(amount : int):
	hp -= amount
