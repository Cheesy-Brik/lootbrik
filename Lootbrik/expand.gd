extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = create_tween().set_trans(Tween.TRANS_ELASTIC)
	tween.tween_property(self, "scale", Vector2.ONE, .5).from(Vector2(.5,.5))
	tween.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
