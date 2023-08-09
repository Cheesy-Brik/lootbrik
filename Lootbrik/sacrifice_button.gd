extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _pressed():
	var inv_pos = $"../Control2/Control".inv_pos
	if inv_pos == -1:
		return
	Globals.sacrifice(inv_pos)
	$"../Control2/Control".inv_pos = -1
