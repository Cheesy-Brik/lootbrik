extends RichTextLabel

var last_money = -1
var wait_frames = 0
var stored_money = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	text = "$" + str(Globals["user"]["money"])
	last_money = Globals["user"]["money"]
	stored_money = Globals["user"]["money"]

var money = preload("res://money_rise.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var change = 1
	var dif = abs(floor(last_money) - Globals["user"]["money"])
	if dif > 1000:
		change = 10**len(str(dif))
	if change > dif:
		change = dif-1
	if wait_frames == 0:
		if floor(last_money) != Globals["user"]["money"]:
			if last_money > Globals["user"]["money"]:
				last_money -= change
				if dif < 25:
					wait_frames = randi_range(1,5)
			elif last_money < Globals["user"]["money"]:
				last_money += change
				if dif < 25:
					wait_frames = randi_range(1,5)
	else:
		wait_frames -= 1
		if dif > 10:
			wait_frames = 0
	text = "$" + str(floor(last_money))
	if stored_money != Globals["user"]["money"]:
		var new = money.instantiate()
		var stored_dif = floor(stored_money) - Globals["user"]["money"]
		if stored_dif > 0:
			new.get_node("RichTextLabel").text = "$" + str(stored_dif) + "-"
			new.modulate = Color("red")
		else:
			new.get_node("RichTextLabel").text = "$" + str(abs(stored_dif)) + "+"
			new.modulate = Color("green")
		get_parent().add_child(new)
		new.global_position.y = global_position.y
		new.global_position.x = global_position.x
		new.global_position.x += randi_range(-50,0)
	stored_money = Globals["user"]["money"]
