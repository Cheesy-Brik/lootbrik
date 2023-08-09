extends AudioStreamPlayer

var vol_tween
var vol_tween_2
var next = "res://Resource/main.mp3"
var current = "res://Resource/main.mp3"

@export var transition_time = .5

# Called when the node enters the scene tree for the first time.
func _ready():
	return
	stream = load(next)
	play()
	vol_tween = create_tween()
	vol_tween.stop()

func _next_song():
	vol_tween_2 = create_tween()
	stream = load(next)
	play()
	vol_tween_2.tween_property(self, "volume_db", 1, transition_time)
	current = next

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	volume_db = -60
	return
	if $"../".get_child($"../".current_tab).name == "Sacrifice":
		next = "res://Resource/sacrifice.mp3"
	else:
		next = "res://Resource/main.mp3"
	if current != next and not vol_tween.is_running():
		vol_tween = create_tween()
		vol_tween.finished.connect(_next_song)
		vol_tween.finished.connect(stop)
		vol_tween.tween_property(self, "volume_db", -80, transition_time-.1)
