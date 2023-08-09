extends TextureRect

var folder = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("../../").id != -1:
		folder = "Briks"
		if get_node("../../").type == 1:
			folder = "Shiny"
		modulate.a = 1
		texture = load("res://" + folder + "/brik" + str(get_node("../../").id) + ".png")
	else:
		modulate.a = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("../../").id != -1:
		folder = "Briks"
		if get_node("../../").type == 1:
			folder = "Shiny"
		modulate.a = 1
		texture = load("res://" + folder + "/brik" + str(get_node("../../").id) + ".png")
	else:
		modulate.a = 0
