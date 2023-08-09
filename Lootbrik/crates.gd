extends HBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in Globals.crates[get_node("../../../../../").id]["weights"]:
		if not i in Globals.crates[get_node("../../../../../").id]["secret"]:
			var new = load("res://brik_ui.tscn").instantiate()
			new.id = i
			add_child(new)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
