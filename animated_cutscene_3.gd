extends AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	var animated_cutscene_3: AnimatedSprite2D = $"."
	animated_cutscene_3.frame = frame
	frame = 0
	var button: Button = $"../Button"
	button.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	var button: Button = $"../Button"

	if Input.is_action_just_pressed("Dialogue"):
		frame = frame + 1
		if frame == 8:
			button.show()

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
