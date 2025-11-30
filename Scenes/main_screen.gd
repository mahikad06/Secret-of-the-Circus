extends Node2D

func _input(Dialogue):
	if Dialogue.is_action_pressed("Dialogue"):
		$Label.text = "Welcome to the Circus..."
		$Label.modulate = Color.DARK_RED
