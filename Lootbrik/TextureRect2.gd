extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	texture = load("res://Briks/brik" + str(get_node("../../../").id) + ".png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
