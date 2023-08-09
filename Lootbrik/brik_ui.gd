extends Control

@export var id = -1
@export var type = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tooltip_text = ""
	if type == 1:
		tooltip_text = "Shiny "
	tooltip_text += Globals["briks"][id]["name"]
