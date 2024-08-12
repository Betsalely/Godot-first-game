extends Area2D

@onready var kill_zone = $"../KillZone"
@onready var sprite = $"../AnimatedSprite2D"
@onready var timer = $Timer
@onready var slime = $".."
@onready var game_manager = %GameManager

func _on_body_entered(body):
	body.jump()
	if kill_zone.get_node('CollisionShape2D'):
		kill_zone.get_node('CollisionShape2D').queue_free()
	sprite.play('death')

	timer.start()


func _on_timer_timeout():
	slime.queue_free()


