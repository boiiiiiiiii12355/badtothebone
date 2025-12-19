extends Control

@export var text : RichTextLabel
func _physics_process(delta: float) -> void:
	if $Timer.is_stopped():
		$Timer.start()

func _set_text(s_text : String):
	$RichTextLabel.text = s_text

func _ready():
	$Timer.start()

func _on_timer_timeout():
	text.visible_characters += 1

func num_diag():
	if curr_dialogue == 1:
		_set_text("easfcd")
	elif  curr_dialogue == 2:
		_set_text("sdfcsfdcv")

var curr_dialogue : int = 1
func _process(delta: float) -> void:
	num_diag()
	if Input.is_action_just_pressed("next"):
		curr_dialogue += 1
		text.visible_characters =0
