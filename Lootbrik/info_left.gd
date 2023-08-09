extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	if !($"../../..".inv_pos > 0):self_modulate.a = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _pressed():
	if $"../../..".inv_pos > 0:
		var new = load("res://brik_info_window.tscn").instantiate()
		new.inv_pos = $"../../..".inv_pos-1
		new._ready()
		$"../../..".get_parent().add_child(new)
		$"../../..".queue_free()
	else:
		self_modulate.a = 0
