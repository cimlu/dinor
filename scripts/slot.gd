extends Node2D
#
#@onready var border = $border
#var select = false
#signal selected(name)
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#
#
#
#func _on_area_input_event(viewport, event, shape_idx):
#	if event.is_action_pressed("click"):
#		print("yes")
#		if select or border.visible:
#			border.visible = false
#			select = false
#		else:
#			border.visible = true
#			select = true
#			selected.emit()
