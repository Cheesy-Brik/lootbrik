extends TabContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in [2]:
		set_tab_disabled(i, true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var index = -1
	var children = get_children()
	if Globals.user["unlocks"]["profit"]:
		for i in children.size():
			if children[i].name == "Fuse":
				set_tab_hidden(i, false)
	else:
		for i in children.size():
			if children[i].name == "Fuse":
				set_tab_hidden(i, true)
				if current_tab == i:
					current_tab = i-1%children.size()
	
	if Globals.user["unlocks"]["essence"]:
		for i in children.size():
			if children[i].name == "Sacrifice":
				set_tab_hidden(i, false)
	else:
		for i in children.size():
			if children[i].name == "Sacrifice":
				set_tab_hidden(i, true)
				if current_tab == i:
					current_tab = i-1%children.size()
	
	if len(Globals.user["inv"]) >= 2:
		for i in children.size():
			if children[i].name == "Polish":
				set_tab_disabled(i, false)
			if children[i].name == "Fuse":
				set_tab_disabled(i, false)
	else:
		for i in children.size():
			if children[i].name == "Polish":
				set_tab_disabled(i, true)
				if current_tab == i:
					current_tab = i-1%children.size()
			if children[i].name == "Fuse":
				set_tab_disabled(i, true)
				if current_tab == i:
					current_tab = i-1%children.size()
	if len(Globals.user["inv"]) >= 1:
		for i in children.size():
			if children[i].name == "Sacrifice":
				set_tab_disabled(i, false)
	else:
		for i in children.size():
			if children[i].name == "Sacrifice":
				set_tab_disabled(i, true)
				if current_tab == i:
					current_tab = i-1%children.size()

