extends AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
	var cutscene_1: AnimatedSprite2D = $"."
	cutscene_1.frame = frame
	frame = 0
	var follow_button: Button = $"../follow_button"
	follow_button.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	var follow_button: Button = $"../follow_button"

	if Input.is_action_just_pressed("Dialogue"):
		frame = frame + 1
		if frame == 16: 
			follow_button.show()

func _on_follow_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
