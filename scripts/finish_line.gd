extends Area2D
@onready var firework_1 = $firework1
@onready var firework_2 = $firework2




func _on_body_entered(body):
	firework_1.play("fire")
	firework_2.play("fire")
