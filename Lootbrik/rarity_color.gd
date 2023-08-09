extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("../../").id != -1:
		if get_node("../../").type == 1:
			self_modulate.a = 1
			self_modulate = Globals.rarities["shiny"]["color"].darkened(.1)
		else:
			self_modulate.a = 1
			self_modulate = Globals.rarities[Globals.briks[get_node("../../").id]["rarity"]]["color"].darkened(.1)
	else:
		self_modulate.a = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("../../").id != -1:
		if get_node("../../").type == 1:
			self_modulate.a = 1
			self_modulate = Globals.rarities["shiny"]["color"].darkened(.1)
		else:
			self_modulate.a = 1
			self_modulate = Globals.rarities[Globals.briks[get_node("../../").id]["rarity"]]["color"].darkened(.1)
	else:
		self_modulate.a = 0
