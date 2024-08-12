extends CanvasLayer

var live = 5
var score = 0 
@onready var score_text = $SCORE
@onready var lives = $LIVES
@onready var hearts = [
	$Heart1,
	$Heart2,
	$Heart3,
	$Heart4,
	$Heart5,
	$Heart6,
	$Heart7,
	$Heart8,
	$Heart9,
	$Heart10,
	$Heart11,
	$Hert12
]


func add_point():
	score+=1
	score_text.text = str(score)

func minLives():
	live -= 1
	hearts[live].visible = false
	
	lives.text = str(live)

	
	return live
	
func plusLives():
	hearts[live].visible = true
	live += 1
	lives.text = str(live)

