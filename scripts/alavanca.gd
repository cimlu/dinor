extends TextureRect

@onready var alavanca = $"."
@onready var timer = $"../timer"
@onready var anim = $"../anim"
@onready var return_arrow = $"../returnArrow"

func _ready():
	if Globals.ovo:
		alavanca.texture = load("res://assets/sprites/alavancaup.png")

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if !Globals.passado:
			if Commands.tem("helio3battery"):
				alavanca.texture = load("res://assets/sprites/alavancadown.png")
				Globals.sangue = false
				Dinor.patrulha = false
				Sound.pauseSong("foots")
				Globals.passado = true
				Globals.door_storage = "close"
				Globals.door_energylab = "energyTrancado"
				Commands.discollect("helio3battery")
				anim.play("travel")
				return_arrow.visible = false
				Sound.playSong("travel")
			else:
				DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/maquinaNao.dialogue"))
		else:
			if Commands.tem("blueEgg"):
				alavanca.texture = load("res://assets/sprites/alavancadown.png")
				Dinor.patrulha = false
				timer.start()
				Sound.pauseSong("foots")
			else:
				DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/pegarOvo.dialogue"))

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://panels/final.tscn")

func _on_anim_animation_finished(anim_name):
	return_arrow.visible = true
	Sound.pauseSong("travel")
