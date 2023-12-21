extends Marker2D

@onready var agua = $agua
@onready var spawn_frascos = $"../spawnFrascos"
@onready var frascos = $"../frascos"

func _ready():
	if Globals.lavados == 5:
		frascos.set_position(spawn_frascos.position)

func _process(delta):
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
