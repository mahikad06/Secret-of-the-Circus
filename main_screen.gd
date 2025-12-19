extends Node2D

#BUTTONS
#--Start 
func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")

func _input(Dialogue):
	if Dialogue.is_action_pressed("Dialogue"):
		$Label.text = "Welcome to the Circus..."
		$Label.modulate = Color.DARK_RED
