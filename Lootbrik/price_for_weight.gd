extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $"../TextEdit".text:
		var cost = float($"../TextEdit".text)
		if ceil(cost*10.0) > Globals.user["essence"][1]:
			text = "You don't have that much essence!"
			return
		text = "cost:\n" + str(ceil(cost*10.0)) + "[img=32]res://Resource/essence1.png[/img]"
	else:
		text = "Enter weight!"
