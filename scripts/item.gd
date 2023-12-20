extends Node2D

var hud
var slot
@onready var sprite = $control/sprite
var pickup

func _ready():
	hud = get_parent().get_children()
	for i in hud.size():
		if hud[i].name == "hud":
			hud = hud[i]
			break
	
	pickup = get_parent().get_children()
	for i in pickup.size():
		if pickup[i].name == "pickup":
			pickup = pickup[i]
			print("a     ",pickup)
			break
	
	for i in 7:
		if Commands.inventory[i] == self.name:
			queue_free()

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		collect(self)

func collect(item):
	Commands.collect(item, pickup)
	
	if Commands.invfull:
		print("LIBERE ESPAÇO")
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/inventarioCheio.dialogue"))
	else:
		slot = hud.get_child(1).get_child(Commands.slotsel)
		slot.selectf(false)
		slot.spritechange(self.sprite.texture)
		item.queue_free()
	
