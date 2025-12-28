extends LineEdit


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
#@onready var my_text_edit: LineEdit = $MyLineEdit
@onready var my_label: Label = $myLabel
	#var rich_text = ""

func _on_text_submitted(submitted_text: String) -> void:
	if submitted_text != "ILLUSION":
		my_label.text = "WRONG. Try again. \nHint: UNSILLOI"
	else:
		get_tree().change_scene_to_file("res://Scenes/end.tscn")
		#works
