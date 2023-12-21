extends Control

@onready var bg = $bg
@onready var timer = $timer
var jumpscare = true

func _ready():
	bg.texture = Dinor.bg
	Sound.playSong("jumpscare")

func _on_exit_byn_pressed():
	get_tree().quit()


func _on_animation_player_animation_finished(_anim_name):
	timer.start()


func _on_timer_timeout():
	if jumpscare:
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/jumpscare.dialogue"))
		jumpscare = false
