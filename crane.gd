extends CharacterBody2D

const CRANE_SPEED := 200.0

var is_dropping := false

func _physics_process(delta):
	if Input.is_action_pressed("ui_left") and not is_dropping:
		velocity.x = -CRANE_SPEED
	elif Input.is_action_pressed("ui_right") and not is_dropping:
		velocity.x = CRANE_SPEED
	elif Input.is_action_pressed("ui_select"):
		velocity.y = CRANE_SPEED
		is_dropping = true
	else:
		velocity.x = 0
	
	move_and_slide()
