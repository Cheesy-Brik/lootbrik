extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	modulate.a = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	texture = $"../Button".icon
