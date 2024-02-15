extends HSlider

func _ready():
	if Sound.vol < -30:
		value = -30
	else:
		value = Sound.vol
	

func _on_value_changed(value):
	if value > -30:
		Sound.vol = value
	else:
		Sound.vol = -80
	pass
