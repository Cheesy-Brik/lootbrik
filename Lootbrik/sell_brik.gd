extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _pressed():
	var inv_pos = get_node("../../../../../").inv_pos
	var price = Globals.get_price(inv_pos)
	Globals.remove_brik(inv_pos)
	Globals.user["money"] += price
	Globals.advance_time()
	$"../../../Button".death_tween.play()
