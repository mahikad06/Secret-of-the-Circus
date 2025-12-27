class_name Interactable extends Area2D

@export var interact_type = "none"
@export var interact_value = "none"
@onready var timer: Timer = $"../../../Timer"
@onready var player: CharacterBody2D = $"../../../Player"

func _on_body_entered(body: CharacterBody2D):
	player.velocity.y = -850
	print(player.velocity.y)
	timer.start()

func _on_timer_timeout() -> void:
	player.velocity.y = -550
