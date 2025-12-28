extends Node2D
@export var correct = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

#if correct1 == true && correct2 == true && correct3 == true:
	

func _on_done_pressed() -> void:
	if correct == true:
		get_tree().change_scene_to_file("res://Scenes/level_3_4.tscn")
