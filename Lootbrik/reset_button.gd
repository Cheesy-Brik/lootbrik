extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var window = preload("res://reset_window.tscn")

func _pressed():
	add_child(window.instantiate())
