extends Label

@onready var difficulty = $"../difficulty"

func _process(delta):
	if difficulty.visible:
		visible = true
	else:
		visible = false
