extends Panel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var point = preload("res://point.tscn")

func _draw():
	var points = get_parent().points
	for i in range(len(points)):
		if i != 0:
			if points[i-1].y < points[i].y:
				draw_line(points[i-1], points[i], Color("e63e3e"), 4.0, true)
			else:
				draw_line(points[i-1], points[i], Color("#31c423"), 4.0, true)
	for i in range(len(points)):
		var new = point.instantiate()
		new.price = get_parent().nums[i]
		new.position = points[i]
		add_child(new)
	for i in range(len(points)):
		draw_line(Vector2(points[i].x, custom_minimum_size.y), Vector2(points[i].x, custom_minimum_size.y-20), Color("#edf0fa"), 2.0, true)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
