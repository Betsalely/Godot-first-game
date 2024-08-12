extends Area2D

@onready var player_ui = %Player_ui

func _on_body_entered(body):
	player_ui.plusLives()
	queue_free()

