extends Area2D


@onready var player = %Player

@onready var timer = $Timer
func _on_body_entered(body):
	print('died')
	Engine.time_scale = 0.5

	body.respawn()
	 


	
	
