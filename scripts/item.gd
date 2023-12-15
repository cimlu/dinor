extends Node2D

var hud
var slot
@onready var sprite = $control/sprite

func _ready():
	hud = get_parent().get_children()
	for i in hud.size():
		if hud[i].name == "hud":
			hud = hud[i]
			break

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		collect(self)

func collect(item):
	Commands.collect(item)
	
	if Commands.invfull:
		print("LIBERE ESPAÇO")
	else:
		slot = hud.get_child(1).get_child(Commands.slotsel)
		slot.selectf(false)
		slot.spritechange(self.sprite.texture)
		item.queue_free()
	
	
