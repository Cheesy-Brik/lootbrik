extends Button

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _pressed():
	var button1 = get_node("../HBoxContainer/Control")
	var button2 = get_node("../HBoxContainer/Control2")
	if button1.inv_pos == button2.inv_pos:
		get_node("../Control/samebrik").self_modulate.a = 3
		button1.inv_pos = -1
		button2.inv_pos = -1
		return
	if button1.inv_pos == -1 or button2.inv_pos == -1:
		get_node("../Control/nothing").self_modulate.a = 3
		button1.inv_pos = -1
		button2.inv_pos = -1
		return
	var briks = [Globals.user["inv"][button1.inv_pos],Globals.user["inv"][button2.inv_pos]]
	Globals.remove_brik(button1.inv_pos)
	if button1.inv_pos < button2.inv_pos:
		Globals.remove_brik(button2.inv_pos - 1)#(because of the index being shifted from deletion)
	else:
		Globals.remove_brik(button2.inv_pos)
	var qualities = [briks[0][2], briks[1][2]]
	var id = -1
	var brik_types = [briks[0][0], briks[1][0]]
	brik_types.sort()
	if brik_types in Globals.recipes:
		id = Globals.recipes[brik_types]
	else:
		id = brik_types[randi() % brik_types.size()]
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
	Globals.add_brik([id, 1, randi_range(qualities.min(),qualities.max()) if shiny != 1 else 200, [0], shiny])
	button1.inv_pos = -1
	button2.inv_pos = -1
	Globals.user["recipes"].append(brik_types.duplicate())
	var get = load("res://brik_get.tscn").instantiate()
	get.id = id
	get.type = shiny
	add_child(get)
