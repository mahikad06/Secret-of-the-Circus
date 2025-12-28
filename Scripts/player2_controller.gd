extends CharacterBody2D


@export var SPEED = 250.0
@export var JUMP_VELOCITY = -550.0
var HIGH_JUMP = false

@onready var animation = $AnimatedSprite2D

func _on_high_jump_area_body_entered(body: CharacterBody2D) -> void:
	JUMP_VELOCITY = -850.0
	velocity.y = JUMP_VELOCITY


func _on_speed_area_body_entered(body: CharacterBody2D) -> void:
	SPEED += 100


func _physics_process(delta: float) -> void:
	# Gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		#var floor = get_floor_collision()
		velocity.y = JUMP_VELOCITY
#if direction:
	 
	var direction := Input.get_axis("move_left", "move_right")
	
	if direction != 0:
		$AnimatedSprite2D.flip_h = (direction == -1)
		
	if direction:
#		player.flip_h = (direction == 1)
		velocity.x = direction * SPEED
		animation.play("moving")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animation.stop()

	move_and_slide()
	
