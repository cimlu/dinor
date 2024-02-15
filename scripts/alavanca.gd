extends TextureRect

@onready var alavanca = $"."
@onready var timer = $"../timer"
@onready var anim = $"../anim"
@onready var return_arrow = $"../returnArrow"

func _ready():
	if Globals.ovo:
		alavanca.texture = load("res://assets/sprites/alavancaup.png")

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		if !Globals.passado:
			if Commands.tem("helio3battery"):
				alavanca.texture = load("res://assets/sprites/alavancadown.png")
				anim.play("travel")
				return_arrow.visible = false
				Commands.discollect("helio3battery")
				Sound.playSong("travel")
				Dinor.pauseFoots()
			else:
				DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/maquinaNao.dialogue"))
		elif Commands.tem("helio3battery"):
			if Commands.tem("blueEgg"):
				alavanca.texture = load("res://assets/sprites/alavancadown.png")
				Dinor.patrulha = false
				Dinor.pauseFoots()
				anim.play("travel")
				Sound.playSong("travel")
			else:
				DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/pegarOvo.dialogue"))
		else:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/maquinaNao.dialogue"))

func _on_anim_animation_finished(_anim_name):
	if Globals.passado:
		get_tree().change_scene_to_file("res://panels/final.tscn")
	else:
		set_variaveis()
		return_arrow.visible = true
		Sound.pauseSong("travel")

func set_variaveis():
	Globals.sangue = false
	Dinor.patrulha = false
	Globals.passado = true
	Globals.door_storage = "close"
	Globals.door_energylab = "energyTrancado"

