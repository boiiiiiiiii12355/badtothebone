extends Control

@export var text : RichTextLabel
func _physics_process(delta: float) -> void:
	if $Timer.is_stopped():
		$Timer.start()

func _ready():
	$Timer.start()

func _on_timer_timeout():
	text.visible_characters += 1
