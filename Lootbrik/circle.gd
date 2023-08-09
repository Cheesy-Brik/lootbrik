extends Node2D

@export var price = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel.tooltip_text = str(price)

func _draw():
	draw_circle(Vector2(), 7, Color("2e353c").darkened(0.2))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
