extends HSlider

func _ready():
	value = Sound.vol

func _on_value_changed(value):
	Sound.vol = value
	print(value)
	pass
