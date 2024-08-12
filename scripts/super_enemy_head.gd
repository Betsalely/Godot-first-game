extends Area2D

@onready var kill_zone = $"../KillZone"
@onready var sprite = $"../AnimatedSprite2D"
@onready var timer = $Timer
@onready var slime = $".."

func _on_body_entered(body):
	body.super_jump()
	

