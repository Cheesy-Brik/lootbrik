extends Control

@export var nums = []
var points = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var y_mult
	if nums.max() != 0:
		y_mult = get_node("Panel").custom_minimum_size.y/nums.max()
	else:
		y_mult = 0
	var x_mult = get_node("Panel").custom_minimum_size.x/(len(nums)-1)
	for i in range(len(nums)):
		points.append(Vector2(i*x_mult, abs(get_node("Panel").custom_minimum_size.y - nums[i]*y_mult) )) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
