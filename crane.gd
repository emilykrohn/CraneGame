extends CharacterBody2D

const CRANE_SPEED := 200.0

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -CRANE_SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x = CRANE_SPEED
	else:
		velocity.x = 0
	
	move_and_slide()
