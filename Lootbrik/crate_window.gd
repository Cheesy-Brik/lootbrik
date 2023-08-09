extends CanvasLayer

@export var id = 0
var briks = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in Globals.crates[id]["weights"]:
		if i not in Globals.crates[id]["secret"]:
			briks.append(i)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Control/Panel/HBoxContainer/Control2.briks = briks
