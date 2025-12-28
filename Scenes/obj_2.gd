extends Area2D

var dragging := false
var drag_offset := Vector2.ZERO
var draggable = false
var is_inside_dropable = false
var body_ref
var offset: Vector2

func _on_mouse_entered() -> void:
		if Input.is_action_pressed("click"):
			dragging = true
			drag_offset = global_position - get_global_mouse_position()
		else:
			dragging = false

func _process(_delta):
	if dragging:
		global_position = get_global_mouse_position() + drag_offset
		


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	# if draggable:
# 		if Input.is_action_pressed("click"):
# 			offset = get_global_mouse_position() - global_position
# 			global.is_dragging = true
# 			global_position = get_global_mouse_position()
# 		elif Input.is_action_just_released("click"):
# 			global.is_dragging = false
# 			var tween = get_tree().create_tween()
# 			if is_inside_dropable:
# 				tween.tween_property(self,"position",body_ref.position,0.2).set_ease(Tween.EASE_OUT)
# 			else:
# 				tween.tween_property(self,"global_position",global_position,0.2).set_ease(Tween.EASE_OUT)


# func _on_mouse_entered() -> void:
# 	if not global.is_dragging:
# 		draggable = true
# 		scale = Vector2(1.1,1.1)


# func _on_mouse_exited() -> void:
# 	pass # Replace with function body.
# 	if not global.is_dragging:
# 		draggable = false
# 		scale = Vector2(1,1)

# func _on_body_entered(body: StaticBody2D):
# 	if body.is_in_group('dropable'): #if area is dropable
# 		is_inside_dropable = true #can drop
# 		body.modulate = Color(Color.REBECCA_PURPLE,1)
# 		body_ref = body


# func _on_body_exited(body: Node2D) -> void:
# 	if body.is_in_group('dropable'): #if area is dropable
# 		is_inside_dropable = false #can't drop
# 		body.modulate = Color(Color.MEDIUM_PURPLE,0.7)
