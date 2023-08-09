extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = "[center][b][color=" + Globals.rarities[Globals.briks[get_node("../../../").id]["rarity"]]["color"].to_html() + "]" + Globals.briks[get_node("../../../").id]["rarity"].capitalize()
	if get_node("../../../").type == 1:
		text = "[center][b][color=" + Globals.rarities["shiny"]["color"].to_html() + "]" + "Shiny"
