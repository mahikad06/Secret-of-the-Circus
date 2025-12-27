extends CharacterBody2D


@onready var SPEED = 250.0
@onready var JUMP_VELOCITY = -550.0

@onready var animation = $AnimatedSprite2D
@onready var timer: Timer = $"../Timer"

func ready():
	timer.start()

func _physics_process(delta: float) -> void:
	# Gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		animation.play("moving")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animation.stop()

	move_and_slide()
	
@onready var level_2: Node2D = $".."
@onready var timer2: Timer = $"../Timer"
@onready var acceleration: float=0.5


func _on_high_jump_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	velocity.y = -850
	print(velocity.y)
	
