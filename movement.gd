extends CharacterBody2D

@export var speed = 1000
var hp = 100

func _physics_process(delta: float) -> void:
	var dir = Input.get_vector("left", "right" ,"up" ,"down")
	var req_velocity = dir * speed
	velocity = lerp(velocity, req_velocity, 0.1)
	move_and_slide()

var hpbar
@export var hp_bar : ProgressBar
func hp_mang():
	hp_bar.value = hp
	
func hit(amount : int):
	hp -= amount
	

