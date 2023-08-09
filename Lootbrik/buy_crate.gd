extends Button

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _pressed():
	var boost = $"../../../HBoxContainer/VBoxContainer/TextEdit".text
	var crate = Globals.crates[get_node("../../../../../").id]
	if crate["cost"] <= Globals.user["money"]:
		Globals.user["money"] -= crate["cost"]
		var sum = 0
		for i in crate["weights"]:
			sum += crate["weights"][i]
		if boost and Globals.user["essence"][1] >= ceil(float(boost)*10.0) and $"../../../HBoxContainer/Control2".id != -1:
			sum += float(boost)
		var rand = rng.randf_range(0, sum)
		var backlog = 0
		var choice
		for i in crate["weights"]:
			var extra = 0
			if i == $"../../../HBoxContainer/Control2".id and boost and Globals.user["essence"][1] >= ceil(float(boost)*10.0) and $"../../../HBoxContainer/Control2".id != -1:
				extra = float(boost)
			if backlog + crate["weights"][i] + extra >= rand:
				choice = i
				break
			else:
				backlog += crate["weights"][i]
		if boost and Globals.user["essence"][1] >= ceil(float(boost)*10.0) and $"../../../HBoxContainer/Control2".id != -1:
			Globals.user["essence"][1] -= ceil(float(boost)*10.0)
		var new = load("res://brik_get.tscn").instantiate()
		new.id = choice
		new.quality = round(Globals.normalized_random()*100)
		
		Globals.advance_time()
		var shiny = 0
		if randi_range(0,100) == 0:
			shiny = 1
		Globals.add_brik([choice, 1, new.quality if shiny != 1 else 200, [0], shiny])
		new.type = shiny
		add_child(new)
