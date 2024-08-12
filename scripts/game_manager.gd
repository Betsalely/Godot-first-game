extends Node

var score = 0 

@onready var score_label = $ScoreLabel
@onready var score_label_2 = $ScoreLabel2

func add_point():
	score+=1
	score_label.text = str(score) + ' coins'
	score_label_2.text = str(score) + ' coins'

	
