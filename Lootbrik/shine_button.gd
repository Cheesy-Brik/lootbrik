extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var get = preload("res://brik_get.tscn")

func _pressed():
	if Globals.user["essence"][0] >= 500 and $"../HBoxContainer/Control".inv_pos != -1 and Globals.user["inv"][$"../HBoxContainer/Control".inv_pos][4] != 1:
		Globals.user["essence"][0] -= 500
		var brik = Globals.user["inv"][$"../HBoxContainer/Control".inv_pos]
		brik[4] = 1
		Globals.change_brik($"../HBoxContainer/Control".inv_pos, brik)
		var new = get.instantiate()
		new.id = Globals.user["inv"][$"../HBoxContainer/Control".inv_pos][0]
		new.type = 1
		$"../HBoxContainer/Control".inv_pos = -1
		add_child(new)
