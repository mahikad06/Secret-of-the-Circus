extends Area2D
@onready var timer: Timer = $Timer

func _on_body_entered(body: CharacterBody2D):
	print("end level")
	timer.start()
	get_tree().change_scene_to_file("res://Scenes/cutscene_2.tscn")
