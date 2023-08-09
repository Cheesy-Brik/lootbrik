extends Control

@export var id = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Control").id = id
	get_node("Control").type = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_mouse_entered():
	pass # Replace with function body.
