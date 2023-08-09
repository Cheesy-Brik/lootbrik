extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("../../../../../").inv_pos > len(Globals.user["inv"])-1:return
	var price = Globals.get_price(get_node("../../../../../").inv_pos)
	var brik = Globals.user["inv"][get_node("../../../../../").inv_pos]
	if price > brik[3][-1]:
		text = "[b][color=green]$" + str(price) + "↑"
	else:
		text = "[b][color=red]$" + str(price) + "↓"
