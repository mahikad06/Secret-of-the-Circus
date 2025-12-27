extends Area2D
@onready var player: CharacterBody2D = $"../../../Player"
@onready var timer: Timer = $"../../../Timer"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_body_entered(body: CharacterBody2D) -> void:
	player.SPEED = player.SPEED + 150
	timer.start()
	
func _on_timer_timeout() -> void:
	player.SPEED = player.SPEED - 150
