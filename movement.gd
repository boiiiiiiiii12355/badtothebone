extends CharacterBody2D

@export var speed = 1000

func _physics_process(delta: float) -> void:
	var dir = Input.get_vector("left", "right" ,"up" ,"down")
	var req_velocity = dir * speed
	velocity = lerp(velocity, req_velocity, 0.1)
	move_and_slide()
	
