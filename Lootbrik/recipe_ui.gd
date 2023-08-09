extends Control

var recipe = [0,0,5]

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/Control2/Control.id = recipe[0]
	$HBoxContainer/Control3/Control.id = recipe[1]
	$HBoxContainer/Control4/Control.id = recipe[2]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
