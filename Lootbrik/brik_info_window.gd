extends CanvasLayer

@export var inv_pos = 0

var graph = preload("res://graph.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	if inv_pos >= len(Globals.user["inv"]):
		queue_free()
	get_node("Control/Panel/VBoxContainer/HBoxContainer/Control2").id = Globals.user["inv"][inv_pos][0]
	get_node("Control/Panel/VBoxContainer/HBoxContainer/Control2").type = Globals.user["inv"][inv_pos][4]
	var new = graph.instantiate()
	new.nums = Globals.user["inv"][inv_pos][3] + [Globals.get_price(inv_pos)]
	get_node("Control").add_child(new)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_right"):
		if inv_pos < len(Globals.user["inv"])-1:
			var new = load("res://brik_info_window.tscn").instantiate()
			new.inv_pos = inv_pos+1
			new._ready()
			get_parent().add_child(new)
			queue_free()
	if Input.is_action_just_pressed("ui_left"):
		if inv_pos > 0:
			var new = load("res://brik_info_window.tscn").instantiate()
			new.inv_pos = inv_pos-1
			new._ready()
			get_parent().add_child(new)
			queue_free()
	if Input.is_action_just_pressed("ui_accept"):
		$Control/Panel/VBoxContainer/HBoxContainer5/Button2._pressed()
