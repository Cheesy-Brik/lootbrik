extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _pressed():
	var button1 = get_node("../HBoxContainer/Control")
	var button2 = get_node("../HBoxContainer/Control2")
	if button1.inv_pos == -1 or button2.inv_pos == -1:
		get_node("../Control/nothing").self_modulate.a = 3
		button1.inv_pos = -1
		button2.inv_pos = -1
		return
	if button1.inv_pos == button2.inv_pos:
		get_node("../Control/samebrik").self_modulate.a = 3
		button1.inv_pos = -1
		button2.inv_pos = -1
		return
	if Globals.user["inv"][button1.inv_pos][0] != Globals.user["inv"][button2.inv_pos][0]:
		get_node("../Control/sametype").self_modulate.a = 3
		button1.inv_pos = -1
		button2.inv_pos = -1
		return
	var get = load("res://brik_get_with_quality.tscn").instantiate()
	get.id = Globals.user["inv"][button1.inv_pos][0]
	var briks = [Globals.user["inv"][button1.inv_pos],Globals.user["inv"][button2.inv_pos]]
	Globals.user["inv"].remove_at(button1.inv_pos)
	if button1.inv_pos < button2.inv_pos:
		Globals.user["inv"].remove_at(button2.inv_pos - 1)#(because of the index being shifted from deletion)
	else:
		Globals.user["inv"].remove_at(button2.inv_pos)
	var shiny = 0
	if briks[0][4] != 1 and briks[1][4] != 1:
		if randi_range(0,150) == 0:
			shiny = 1
	else:
		if briks[0][4] == 1 and briks[1][4] == 1:
			shiny = 1
		else:
			if randi_range(0,10) == 0:
				shiny = 1
	var qualities = [briks[0][2], briks[1][2]]
	Globals.add_brik([briks[0][0], 1, min(qualities.max() + ceil(qualities.min()/(qualities.max()/8)),100) if shiny != 1 else 200, [0], shiny])
	button1.inv_pos = -1
	button2.inv_pos = -1
	get.quality = Globals.user["inv"][-1][2]
	get.type = shiny
	add_child(get)
