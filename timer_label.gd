extends Label

func _process(delta):
	text = "Time Left: " + str(snapped($Timer.get_time_left(), 1))
