extends RichTextLabel

var last
var wait_frames = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	last = Globals.user["essence"][int(str(name))]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var change = 1
	var dif = abs(floor(last) - Globals.user["essence"][int(str(name))])
	if dif > 1000:
		change = 10**len(str(dif))
	if change > dif:
		change = dif-1
	if wait_frames == 0:
		if floor(last) != Globals.user["essence"][int(str(name))]:
			if last > Globals.user["essence"][int(str(name))]:
				last -= change
				if dif < 25:
					wait_frames = randi_range(1,5)
			elif last < Globals.user["essence"][int(str(name))]:
				last += change
				if dif < 25:
					wait_frames = randi_range(1,5)
	else:
		wait_frames -= 1
		if dif > 10:
			wait_frames = 0
	text = "[img]res://Resource/essence" +  name + ".png[/img]   "
	text += str(last)
