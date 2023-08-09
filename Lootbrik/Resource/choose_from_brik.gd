extends Control

@export var briks = []
@export var id = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Control").id = -1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if id != -1:
		get_node("Control").id = id
		get_node("Control").type = 0
	else:
		get_node("Control").id = -1
