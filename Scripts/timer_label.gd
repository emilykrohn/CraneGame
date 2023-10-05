extends Label

func _process(delta):
	text = "Time Left: " + str(snapped(get_node("../Timer").get_time_left(), 1))
