extends Node2D
@onready var player: CharacterBody2D = $Player
@onready var timer: Timer = $Timer

func _process(delta: float):
	player.SPEED += delta * 2.5 
	print(player.SPEED)

@warning_ignore("unused_parameter")
func _on_high_jump_body_entered(body: CharacterBody2D) -> void:
	player.velocity.y = -1050
	print(player.velocity.y)
	timer.start()

func _on_timer_timeout() -> void:
	player.velocity.y = -400
