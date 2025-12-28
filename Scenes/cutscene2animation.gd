extends AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
	var cutscene_2_animation: AnimatedSprite2D = $"."
	cutscene_2_animation.frame = frame
	frame = 0
	var yaybutton: Button = $"../yaybutton"
	yaybutton.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	var yaybutton: Button = $"../yaybutton"


	if Input.is_action_just_pressed("Dialogue"):
		frame = frame + 1
		if frame == 7: 
			yaybutton.show()

func _on_yaybutton_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
