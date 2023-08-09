extends HFlowContainer

var brik = preload("res://brik_choose_button.tscn")

signal picked(inv_pos)

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(len(Globals.user["inv"])):
		var new = brik.instantiate()
		new.inv_pos = i
		add_child(new)
		new.get_node("Button").pressed.connect(_on_press.bind(new))

# Called every frame. 'delta' is the elapsed time since the previous frame

func _on_press(button):
	picked.emit(button.inv_pos)
