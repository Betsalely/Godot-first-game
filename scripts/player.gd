extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -420.0
var posx = -223
var posy = 8


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var collision_shape = $CollisionShape2D
@onready var player = $"."
@onready var sprite = $AnimatedSprite2D
@onready var player_ui = %Player_ui

func jump():
	velocity.y = JUMP_VELOCITY
	
func super_jump():
	velocity.y = JUMP_VELOCITY*1.5

func playerPosition(posX, posY):
	posx = posX
	posy = posY
	
func respawn():

	var check = player_ui.minLives()
	
	Engine.time_scale = 1.0
	if check>0:
		position.x = posx
		position.y = posy
	else:
		get_tree().reload_current_scene()



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("move_left", "move_right")
	
	if direction > 0:
		sprite.flip_h = false
	elif direction < 0:
		sprite.flip_h = true
	
	if is_on_floor():
		if direction == 0 :
			sprite.play("idle")
		else:
			sprite.play("roll")
	else:
		sprite.play('jump')


		
	
	
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
