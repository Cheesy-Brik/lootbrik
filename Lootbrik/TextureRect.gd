extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	self_modulate.a = 1 - Globals.user["inv"][get_node("../").inv_pos][2]/100.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
