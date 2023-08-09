extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	icon = load("res://Resource/crate" + str(get_node("../").id) + ".png")
	tooltip_text = Globals.crates[get_node("../").id]["name"]

func _pressed():
	var new = load("res://crate_window.tscn").instantiate()
	new.id = get_node("../").id
	add_child(new)


func _on_mouse_entered():
	material.set_shader_parameter("line_color", Vector4(1,1,1,1))

func _on_mouse_exited():
	material.set_shader_parameter("line_color", Vector4(1,1,1,0))
