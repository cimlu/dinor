extends Node2D

@onready var collision = $sl
@onready var pause_button = $pauseButton
var pauseIcon = load("res://assets/sprites/pauseButton.png")
var despauseIcon = load("res://assets/sprites/despauseButton.png")

var slots
var current_slot = null

func _ready():
	for i in 7:
		collision.get_child(i).border.visible = false
		collision.get_child(i).selected.connect(disselect)
		i=i+1

func _process(delta):
	if pause_button.icon == despauseIcon and !Globals.paused:
		pause_button.icon = pauseIcon
	elif pause_button.icon == pauseIcon and Globals.paused:
		pause_button.icon = despauseIcon

func disselect():
	for i in 7:
		collision.get_child(i).border.visible = false
		i=i+1
		Commands.selectedSlot.border.visible = true
	Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))


func _on_pause_button_pressed():
	if Globals.paused:
		pause_button.icon = load("res://assets/sprites/pauseButton.png")
		Pause.despause()
	else:
		pause_button.icon = load("res://assets/sprites/despauseButton.png")
		Pause.pause()
