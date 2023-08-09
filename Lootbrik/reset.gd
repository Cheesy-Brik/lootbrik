extends Button

var death_tween

# Called when the node enters the scene tree for the first time.
func _ready():
	death_tween = create_tween().set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN_OUT)
	death_tween.pause()
	death_tween.finished.connect(get_node("../../../").queue_free)
	death_tween.tween_property(get_node("../../"), "modulate", Color("ffffff", 0), .1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _pressed():
	Globals.reset_user()
	death_tween.play()
	
