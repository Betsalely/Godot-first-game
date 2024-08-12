extends Area2D

var positionx
var positiony

func _ready():
	positionx = position.x
	positiony = position.y
	print(positionx, positiony)



func _on_body_entered(body):
	body.playerPosition(positionx,positiony)
