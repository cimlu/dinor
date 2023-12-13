extends Node2D


#@onready var sprite = $control/sprite
#@onready var control = $control
#@onready var collision_click = $control/area/collision_click
#@onready var item = $"."
#@onready var area = $control/area

@onready var collision_click = $"../area/collision_click"
@onready var control = $"control"
@onready var sprite = $"control/sprite"

func _ready():
	var itemc = get_parent()
	var item_name = itemc.name
	if collision_click.shape != RectangleShape2D:
		collision_click.shape = RectangleShape2D.new()
#	var this = itemc.get_child(0)
	sprite.texture = load("res://assets/sprites/"+item_name+".png")
	var dimy = load("res://assets/sprites/"+item_name+".png").get_height()
	var dimx = load("res://assets/sprites/"+item_name+".png").get_width()
	print(sprite.size)
	sprite.size.x = dimx
	sprite.size.y = dimy
	print(control.size)
	collision_click.shape.size.x = dimx
	collision_click.shape.size.y = dimy
##	print(collision_click.shape.size)
	var adx = sprite.position.x - collision_click.position.x
	var ady = sprite.position.y - collision_click.position.y
	print(adx)
	sprite.position.x = collision_click.position.x + adx
	sprite.position.y = sprite.position.y + ady
	print(sprite.global_position.x)
	print(collision_click.global_position.x - dimx/2)

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		collect()

func collect():
	Commands.collect(self)
	






