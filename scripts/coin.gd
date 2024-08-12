extends Area2D


@onready var game_manager = %GameManager
@onready var player_ui = %Player_ui


func _on_body_entered(body):
	game_manager.add_point()
	player_ui.add_point()
	queue_free()
