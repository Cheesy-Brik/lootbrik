extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("../../../../../").inv_pos > len(Globals.user["inv"])-1:return
	var brik = Globals.user["inv"][get_node("../../../../../").inv_pos]
	text = "[b][color=" + Globals.rarities[Globals.briks[brik[0]]["rarity"]]["color"].to_html() + "]" + Globals.briks[brik[0]]["rarity"].capitalize()
	if brik[4] == 1:
		text = "[b][color=" + Globals.rarities["shiny"]["color"].to_html() + "]" + "Shiny"
