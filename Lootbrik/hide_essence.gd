extends HBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = Globals.user["unlocks"]["essence"]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	visible = Globals.user["unlocks"]["essence"]
