extends TextureRect

func _ready():
	if Globals.sangue:
		visible = true
	else:
		visible = false
