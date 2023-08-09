extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("../").id != -1:
		tooltip_text = Globals.briks[get_node("../").id]["name"]
	else:
		tooltip_text = "Click to pick a brik!"
	mouse_exited.connect(_mouse_exited)

var last_border = 0.0
var max_border = 11.0

func _mouse_exited():
	last_border = int(max_border)

var pick = preload("res://pick_from.tscn")

func _process(delta):
	if get_node("../").id != -1:
		tooltip_text = Globals.briks[get_node("../").id]["name"]
	else:
		tooltip_text = "Click to pick a brik!"
	var box = StyleBoxFlat.new()
	box.set_border_width_all(last_border)
	box.set_bg_color(Color("#ffffff", 0))
	box.set_border_color(Color("ffffe9", last_border/max_border))
	add_theme_stylebox_override("normal", box)
	last_border -= 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _pressed():
	var new = pick.instantiate()
	new.list = get_node("../").briks
	new.picked.connect(_picked)
	add_child(new)

func _picked(id):
	get_node("../").id = id
