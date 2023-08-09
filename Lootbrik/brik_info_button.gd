extends Control

@export var inv_pos = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Control").id = Globals.user["inv"][inv_pos][0]
	get_node("Control").type = Globals.user["inv"][inv_pos][4]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
