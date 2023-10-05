extends CharacterBody2D

const CRANE_SPEED := 200.0
var is_dropping := false
var current_timer_seconds : float

func _process(delta):
	current_timer_seconds = get_node("../Timer").get_time_left()
	# if the timer has zero seconds left, then drop the crane
	if current_timer_seconds <= 0:
		velocity.y = CRANE_SPEED
		is_dropping = true

func _physics_process(delta):
	# restrict the player from moveing if the crane is dropping
	if Input.is_action_pressed("ui_left") and not is_dropping:
		velocity.x = -CRANE_SPEED
		
	elif Input.is_action_pressed("ui_right") and not is_dropping:
		velocity.x = CRANE_SPEED
	
	# pressing the spacebar drops the crane
	elif Input.is_action_pressed("ui_select"):
		velocity.y = CRANE_SPEED
		is_dropping = true
	
	else:
		velocity.x = 0
	
	move_and_slide()
