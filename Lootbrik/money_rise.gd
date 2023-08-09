extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self_modulate.a == 0:
		get_parent().queue_free()
	self_modulate.a -= .01
	global_position.y -= 1
