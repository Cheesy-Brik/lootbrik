extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("../").inv_pos != -1:
		self_modulate.a = 1 - Globals.user["inv"][get_node("../").inv_pos][2]/100.0
	else:
		self_modulate.a = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("../").inv_pos != -1:
		self_modulate.a = 1 - Globals.user["inv"][get_node("../").inv_pos][2]/100.0
	else:
		self_modulate.a = 0
