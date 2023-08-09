extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("../../../../../../").inv_pos > len(Globals.user["inv"])-1:return
	var brik = Globals.user["inv"][get_node("../../../../../../").inv_pos][0]
	brik = Globals.briks[brik]
	text = brik["desc"]
	if Globals.user["inv"][get_node("../../../../../../").inv_pos][4] == 1:
		text = brik["shiny desc"]
	if "author" in brik:
		text += "\n[i]Brik made by: " + brik["author"]
