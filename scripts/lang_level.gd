extends Label

@onready var lang = $"../lang"

func _process(delta):
	if lang.visible:
		visible = true
	else:
		visible = false
