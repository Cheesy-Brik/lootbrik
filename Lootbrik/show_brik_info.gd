extends Button

var box = StyleBoxFlat.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	box.set_bg_color(Color("#ffffff", 0))
	if Globals.user["inv"][get_node("../").inv_pos][4] == 1:
		tooltip_text += "Shiny "
	tooltip_text += Globals.briks[Globals.user["inv"][get_node("../").inv_pos][0]]["name"] 
	tooltip_text += "\nQuality:" + str(Globals.user["inv"][get_node("../").inv_pos][2]) + "%"
	tooltip_text += "\n$" + str(Globals.get_price(get_node("../").inv_pos))
	mouse_exited.connect(_mouse_exited)

var last_border = 0.0
var max_border = 11.0


func _process(delta):
	if last_border < 1:
		return
	box.set_border_width_all(last_border)
	box.set_border_color(Color("ffffe9", last_border/max_border))
	add_theme_stylebox_override("normal", box)
	last_border -= 1

func _mouse_exited():
	last_border = int(max_border)

var info_window = preload("res://brik_info_window.tscn")

func _pressed():
	var new = info_window.instantiate()
	new.inv_pos = get_node("../").inv_pos
	add_child(new)