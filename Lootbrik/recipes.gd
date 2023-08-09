extends VBoxContainer

var recipe = preload("res://recipe_ui.tscn")
var last_recipes = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in Globals.recipes:
		if i in Globals.user["recipes"]:
			var new = recipe.instantiate()
			new.recipe = [i[0], i[1], Globals.recipes[i]]
			add_child(new)
	last_recipes = Globals.user["recipes"].duplicate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if last_recipes != Globals.user["recipes"]:
		for i in get_children():
			i.queue_free()
		for i in Globals.recipes:
			if i in Globals.user["recipes"]:
				var new = recipe.instantiate()
				new.recipe = [i[0], i[1], Globals.recipes[i]]
				add_child(new)
		last_recipes = Globals.user["recipes"].duplicate()
