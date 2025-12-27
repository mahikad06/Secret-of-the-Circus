extends Node2D

#BUTTONS
#--Start 
func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")

func _input(Dialogue):
	if Dialogue.is_action_pressed("Dialogue"):
		$Label.text = "Welcome to the Circus..."
		$Label.modulate = Color.DARK_RED

func _on_l_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
