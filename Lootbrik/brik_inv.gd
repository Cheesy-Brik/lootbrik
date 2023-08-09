extends HFlowContainer

var brik_info = preload("res://brik_info_button.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.brik_removed.connect(_brik_removed)
	Globals.brik_added.connect(_brik_added)
	Globals.brik_changed.connect(_brik_changed)
	Globals.reset.connect(_reset)
	for i in range(len(Globals.user["inv"])):
		var new = brik_info.instantiate()
		new.inv_pos = i
		add_child(new)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _brik_removed(index):
	get_child(index).queue_free()
	for i in range(index, get_child_count()):
		get_child(i).inv_pos -= 1

func _brik_added(brik):
	var new = brik_info.instantiate()
	new.inv_pos = len(Globals.user["inv"])-1
	add_child(new)

func _brik_changed(index, reason):
	var new = brik_info.instantiate()
	new.inv_pos = index
	get_child(index).queue_free()
	add_child(new)
	move_child(new, index)

func _reset():
	for i in get_children():
		i.queue_free()
	for i in range(len(Globals.user["inv"])):
		var new = brik_info.instantiate()
		new.inv_pos = i
		add_child(new)
