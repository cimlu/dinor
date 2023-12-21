extends TextureRect

@onready var alavanca = $"."
@onready var timer = $"../timer"

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
				var door_storage = "close"
				var door_energylab = "energyTrancado"
			else:
				DialogueManager.show_example_dialogue_balloon(load("res://dialogs/maquinaNao.dialogue"))
		else:
			if Commands.tem("blueEgg"):
				alavanca.texture = load("res://assets/sprites/alavancadown.png")
				Dinor.patrulha = false
				timer.start()
				Sound.pauseSong("foots")
			else:
				DialogueManager.show_example_dialogue_balloon(load("res://dialogs/pegarOvo.dialogue"))


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://panels/final.tscn")
