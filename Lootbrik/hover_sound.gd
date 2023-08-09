extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var hover = preload("res://Resource/hover.mp3")

func _on_button_mouse_entered():
	stream = hover
	play()

var click = preload("res://Resource/select_1.mp3")

func _on_button_pressed():
	stream = click
	play()
