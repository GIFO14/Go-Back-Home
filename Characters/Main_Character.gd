extends KinematicBody2D

var velocity = 170
var motion = Vector2()
var game_paused = false

onready var current_background = $Background

func _process(delta):

	#Basic movement
	if Input.is_action_pressed("ui_w"):
		motion.x = 0
		motion.y = -velocity
		
	elif Input.is_action_pressed("ui_d"):
		motion.y = 0
		motion.x = velocity
		
	elif Input.is_action_pressed("ui_s"):
		motion.x = 0
		motion.y = velocity
		
	elif Input.is_action_pressed("ui_a"):
		motion.y = 0
		motion.x = -velocity
		
	else:
		motion.y = 0
		motion.x = 0
		
		
		
	if Input.is_action_pressed("ui_shift"):
		velocity = 190
		
	elif Input.is_action_pressed("ui_Alt"):
		velocity = 90
		
	else:
		velocity = 140
		
		
		
	move_and_slide(motion)
	
func setGame_paused(pause):
	game_paused = pause
		