extends CanvasLayer

@export var id = 0
@export var quality = 0
@export var type = 0

var death_tween

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Control/VBoxContainer/HBoxContainer2/Control/ColorRect/Control2").id = id
	get_node("Control/VBoxContainer/HBoxContainer2/Control/ColorRect/Control2").type = type
	death_tween = create_tween().set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN_OUT)
	death_tween.pause()
	death_tween.finished.connect(queue_free)
	death_tween.tween_property($Control, "modulate", Color("ffffff", 0), .1)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
		

func _input(event):
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("left_click"):
		death_tween.play()
