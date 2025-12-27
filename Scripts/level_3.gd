extends Node2D

@onready var timer: Timer = $Timer

func _process(delta: float):
	var player = get_node("Player")
	player.SPEED += delta * 2.5 
	print(player.SPEED)

#func _on_player_tree_entered() -> void:
#	timer.start()
#	const SPEED = SPEED + 25
