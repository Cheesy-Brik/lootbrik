extends Button

var box = StyleBoxFlat.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	box.set_bg_color(Color("#ffffff", 0))
	mouse_exited.connect(_mouse_exited)

var last_border = 0.0
var max_border = 11.0

func _process(delta):
	tooltip_text = ""
	if $"../Control".type == 1:
		tooltip_text += "Shiny "
	tooltip_text += Globals.briks[$"../Control".id]["name"]
	if last_border < 1:
		return
	box.set_border_width_all(last_border)
	box.set_border_color(Color("ffffe9", last_border/max_border))
	add_theme_stylebox_override("normal", box)
	last_border -= 1

func _mouse_exited():
	last_border = int(max_border)
