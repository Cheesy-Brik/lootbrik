extends CanvasLayer

var death_tween

# Called when the node enters the scene tree for the first time.
func _ready():
	death_tween = create_tween().set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN_OUT)
	death_tween.pause()
	death_tween.finished.connect(queue_free)
	death_tween.tween_property($Control, "modulate", Color("ffffff", 0), .1)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
signal picked(inv_pos)

func _on_h_flow_container_picked(inv_pos):
	picked.emit(inv_pos)
	death_tween.play()
