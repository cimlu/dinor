extends Marker2D

@onready var agua = $agua
@onready var spawn_frascos = $"../spawnFrascos"
@onready var frascos = $"../frascos"
@onready var frasco_place = $"../frascoPlace"

func _ready():
	if Globals.lavados == 5 and !Globals.task_frascos_complete:
		frascos.set_position(spawn_frascos.position)
	elif  Globals.lavados == 5 and !Globals.task_frascos_complete:
		frascos.set_position(frasco_place.position)

func _process(_delta):
	if Globals.alavar != null:
		Globals.lavado = Globals.alavar
		if Globals.lavou == false:
			agua.visible = true
	
	if Globals.lavando == false:
		agua.visible = false
	else:
		agua.visible = true
		
	Globals.lavar()
	
	if Globals.lavados == 4:
		addFrascos()
	
func addFrascos():
	frascos.set_position(spawn_frascos.position)
	Globals.nextDialog = 5
	Globals.door_storage = "open"
	Globals.lavados = 5
	Globals.lavou = true
