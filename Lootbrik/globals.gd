extends Node

var user
var briks = [
	{
		"name" : "Cheesy Brik",
		"rarity" : "common",
		"desc" : "The Classic",
		"max price" : 25,
		"shiny desc" : "It has a new coat of paint",
	},
	{
		"name" : "Wooden Brik",
		"rarity" : "common",
		"desc" : "It was probably carved by a goblin",
		"max price" : 15,
		"shiny desc" : "Infected with a bad case of goblin moss",
	},
	{
		"name" : "Drawn Brik",
		"rarity" : "legendary",
		"desc" : "That is really really good! Going right on the fridge",
		"max price" : 40,
		"shiny desc" : "This is actually terrible, straight into the trash",
	},
	{
		"name" : "Brik",
		"rarity" : "legendary",
		"desc" : "A brik with no cheese?????",
		"max price" : 120,
		"shiny desc" : "Combine 4 in a crafting table to make bricks",
	},
	{
		"name" : "Pet Brik",
		"rarity" : "uncommon",
		"desc" : "Is it alive?",
		"max price" : 25,
		"author" : "smirkyjens",
		"shiny desc" : "This one is actually not alive, it died happy though",
	},
	{
		"name" : "Very Cheesy Brik",
		"rarity" : "rare",
		"desc" : "Still not enough cheese",
		"max price" : 50,
		"author" : "idae",
		"shiny desc" : "Finally, enough cheese",
	},
	{
		"name" : "Ghostly Brik",
		"rarity" : "rare",
		"desc" : "I wonder how it died?",
		"max price" : 55,
		"shiny desc" : "Died from a yellow circle chasing pellets",
	},
	{
		"name" : "Thrown Brik",
		"rarity" : "uncommon",
		"desc" : "It was chucked at something, probably a goblin",
		"max price" : 30,
		"shiny desc" : "Less \"thrown\" and more pulled into the atmosphere at high speeds",
	},
	{
		"name" : "Noir Brik",
		"rarity" : "common",
		"desc" : "It's solving the mystery of who killed his wife",
		"max price" : 20,
		"author" : "lava",
		"shiny desc" : "Has solved the mystery and turns out it was goblin",
	},
	{
		"name" : "Smol Brik",
		"rarity" : "rare",
		"desc" : "It hasn't grown to full size yet, the meat is more tender",
		"max price" : 35,
		"shiny desc" : "Even more tender",
	},
	{
		"name" : "Neon Brik",
		"rarity" : "legendary",
		"desc" : "Actually has a fair bit of helium",
		"max price" : 85,
		"shiny desc" : "I guess \"Shiny Neon\" is argon",
	},
	{
		"name" : "Lattice Brik",
		"rarity" : "uncommon",
		"desc" : "Criss Cross Criss Cross Criss Cross Criss Cross Criss Cross",
		"max price" : 25,
		"shiny desc" : "Is this a lattice?",
	},
	{
		"name" : "Illusion Brik",
		"rarity" : "rare",
		"desc" : "Is it real? Who knows",
		"max price" : 45,
		"shiny desc" : "This one is real, it's just really good at gaslighting",
	},
	{
		"name" : "Paradox Brik",
		"rarity" : "uncommon",
		"desc" : "It killed its own grandfather and now here we are",
		"max price" : 35,
		"author" : "alpha",
		"shiny desc" : "It killed it's self killing it's grandfather and now I don't know what's happening",
	},
	{
		"name" : "Golden Brik",
		"rarity" : "golden",
		"desc" : "A secret brik forged in goblin gold. Is said to hold a strange power",
		"max price" : 250,
		"author" : "VoidInstruction",
		"shiny desc" : "Forged from pure platnium, commonly confused with platinum",
	},
	{
		"name" : "Moonlight Brik",
		"rarity" : "rare",
		"desc" : "Some say this is brik is also made of cheese",
		"max price" : 85,
		"author" : "alpha",
		"shiny desc" : "This one is made of 99% hydrogen",
	},
	{
		"name" : "Water Brik",
		"rarity" : "common",
		"desc" : "It is made from the tears of all the briks you have sold",
		"max price" : 55,
		"author" : "idae",
		"shiny desc" : "It is made from the acid of all the briks you have sold, yes they all contain stomachs",
	},
	{
		"name" : "Air Brik",
		"rarity" : "common",
		"desc" : "A more accurate name would be aerogel brik but we let it slide",
		"max price" : 55,
		"shiny desc" : "I can't really see it, so I don't know what to say",
	},
	{
		"name" : "Fire Brik",
		"rarity" : "common",
		"desc" : "It's hot",
		"max price" : 55,
		"shiny desc" : "It's hotter",
	},
	{
		"name" : "Earth Brik",
		"rarity" : "common",
		"desc" : "This ins't just a pile a dirt I found, I swear",
		"max price" : 55,
		"shiny desc" : "A dirt statue made by golbins",
	},
	{
		"name" : "Stacked Brik",
		"rarity" : "legendary",
		"desc" : "2 briks stacked on top of each other. crazy.",
		"max price" : 250,
		"shiny desc" : "1 cheese brik and 1 brik equals whatever this is",
	},
	{
		"name" : "Heavenly Brik",
		"rarity" : "legendary",
		"desc" : "Has ascended to a new plain of existince",
		"author" : "alpha",
		"max price" : 250,
		"shiny desc" : "Has descended to a eviler plain of torment",
	},
	{
		"name" : "Wall Brik",
		"rarity" : "legendary",
		"desc" : "Yeah for some reason briks multiply when you put enough of them together",
		"max price" : 550,
		"shiny desc" : "Tagged by an anonymous person, no idea who it could be",
	},
	{
		"name" : "Bubble Brik",
		"rarity" : "uncommon",
		"desc" : "Popped very easily",
		"author" : "widrex",
		"max price" : 65,
		"shiny desc" : "Popped very easily, still",
	},
	{
		"name" : "Sacrificial Brik",
		"rarity" : "rare",
		"desc" : "Mix it with a goat and the devil will thank you.",
		"author" : "widrex",
		"max price" : 300,
		"shiny desc" : "Mix this one with a goat the jesus will give you a high-five",
	},
	{
		"name" : "Charred Brik",
		"rarity" : "rare",
		"desc" : "Very close to ash",
		"max price" : 80,
		"shiny desc" : "OH GOD IT'S STILL ON FIRE",
	},
	{
		"name" : "Ash Brik",
		"rarity" : "legendary",
		"desc" : "Ash compacted into a single Brik",
		"max price" : 140,
		"shiny desc" : "Not even ash anymore just the smoldering remains of a Brik",
	},
	{
		"name" : "Dust Brik",
		"rarity" : "rare",
		"desc" : "It's old and almost gone",
		"max price" : 95,
		"shiny desc" : "This one is older and from the desert",
	},
	{
		"name" : "Melting Brik",
		"rarity" : "common",
		"desc" : "It has melted away",
		"max price" : 30,
		"shiny desc" : "Now with 200% more meltierness!",
	},
	{
		"name" : "Frozen Brik",
		"rarity" : "rare",
		"desc" : "Is from an ancient time from long ago",
		"max price" : 75,
		"shiny desc" : "Has hypothermia now",
	},
	{
		"name" : "Cold Brik",
		"rarity" : "uncommon",
		"desc" : "Got caught up in a blizzard and has a stuffy nose",
		"max price" : 35,
		"shiny desc" : "The aftermath of a nuclear war",
	},
	{
		"name" : "Nature Brik",
		"rarity" : "uncommon",
		"desc" : "Grows very rapidly",
		"max price" : 30,
		"shiny desc" : "Will produce some nice cherries soon",
	},
	{
		"name" : "Upside Down Brik",
		"rarity" : "common",
		"desc" : "It's actually you who is upside down... at least that's what it says",
		"max price" : 30,
		"shiny desc" : "Is much Stranger than the other briks",
	},
	{
		"name" : "Cloud Brik",
		"rarity" : "uncommon",
		"desc" : "It's actually you who is upside down... at least that's what it says",
		"max price" : 65,
		"shiny desc" : "Is much Stranger than the other briks",
	},
	{
		"name" : "Light Brik",
		"rarity" : "rare",
		"desc" : "Don't stare directly into it",
		"max price" : 90,
		"shiny desc" : "Will blind you",
	},
	{
		"name" : "Rotten Brik",
		"rarity" : "uncommon",
		"desc" : "It smells",
		"max price" : 40,
		"shiny desc" : "Has the plague",
		"author" : "widrex",
	},
	{
		"name" : "Rainbow Brik",
		"rarity" : "rare",
		"desc" : "Gay pride!",
		"max price" : 55,
		"shiny desc" : "Trans rights!",
	},
	{
		"name" : "Rainy Brik",
		"rarity" : "rare",
		"desc" : "Gay pride!",
		"max price" : 90,
		"shiny desc" : "Trans rights!",
	},
	{
		"name" : "Cool Brik",
		"rarity" : "common",
		"desc" : "They aren't a nerd I swear",
		"max price" : 20,
		"shiny desc" : "Deal with it",
	},
	{
		"name" : "Blue Brik",
		"rarity" : "common",
		"desc" : "It's sad",
		"max price" : 35,
		"shiny desc" : "das s'tI",
	},
	{
		"name" : "Green Brik",
		"rarity" : "common",
		"desc" : "Made of money",
		"max price" : 35,
		"shiny desc" : "yenom fo edaM",
	},
	{
		"name" : "Red Brik",
		"rarity" : "common",
		"desc" : "It's so angry",
		"max price" : 35,
		"shiny desc" : "yrgna os s'tI",
	},
	{
		"name" : "Fluffy Brik",
		"rarity" : "uncommon",
		"desc" : "It's pets and will 100% not scratch you",
		"max price" : 35,
		"shiny desc" : "Realism OwO",
	},
	{
		"name" : "Corprate Brik",
		"rarity" : "common",
		"desc" : "Probably the best artstyle ever",
		"max price" : 30,
		"shiny desc" : "Money is worth a few human lives... right?",
	},
	{
		"name" : "Comic Brik",
		"rarity" : "uncommon",
		"desc" : "Probably the best artstyle ever",
		"max price" : 35,
		"shiny desc" : "Money is worth a few human lives... right?",
	},
]

var rarities = {
	"common" : {
		"color" : Color("47b5d6")
	},
	"uncommon" : {
		"color" : Color("69ff47")
	},
	"rare" : {
		"color" : Color("3a28dc")
	},
	"legendary" : {
		"color" : Color("ffa700")
	},
	"golden" : {
		"color" : Color("fff235")
	},
	"shiny" : {
		"color" : Color("ffe17c")
	},
}

var crates = [
	{
		"name" : "Classic Crate",
		"cost" : 20,
		"weights" : {
			0 : 50,
			8 : 42,
			1 : 40,
			38 : 38,
			28 : 36,
			32 : 35.3,
			43 : 35,
			41 : 30,
			40 : 30,
			39 : 30,
			7 : 35,
			44 : 33,
			4 : 30,
			42 :29,
			11 : 28,
			13 : 25,
			9 : 20,
			12 : 16,
			5 : 15,
			6 : 10,
			36 : 9,
			2 : 3,
			10 : 2,
			3 : 2,
			14 : 1,
		},
		"secret" : [14]
	},
	{
		"name" : "Elemental Crate",
		"cost" : 50,
		"weights" : {
			17 : 50,
			19 : 50,
			18 : 50,
			16 : 50,
			23 : 35,
			33 : 32.5,
			31 : 30,
			13 : 20,
			30 : 20,
			29 : 12,
			15 : 10,
			34 : 8,
			37 : 6,
			27 : 5,
		},
		"secret" : []
	}
]

var recipes = {
	[0, 0] : 5,
	[18, 15] : 10,
	[34, 15] : 10,
	[1, 18] : 25,
	[0,17] : 7,
	[3,3] : 10,
	[20,20] : 22,
	[16,17] : 23,
	[4, 18] : 6,
	[16, 18] :17,
	[4, 18] : 6,
	[25, 18] : 26,
	[2, 18] : 26,
	[3,3] : 20,
	[20, 20] : 22,
	[26, 6] : 24,
	[17, 19] : 27,
	[18, 0] : 28,
	[0, 32,] : 5,
	[30, 30] : 29,
	[30, 16] : 29,
	[17, 16] : 23,
	[31, 16] : 1,
	[25, 0] : 8,
	[8, 18] : 25,
	[12, 8] : 6,
	[31, 17] : 27,
	[0, 13] : 32,
	[0, 17] : 7,
	[17, 17]: 33,
	[18, 17]: 26,
	[31, 15]: 1,
	[32, 34] : 15,
	[32, 15] : 34,
	[32, 30] : 18,
	[33, 34] : 21,
	[21,32] :24,
	[21, 15] : 24,
	[21, 18] : 24,
	[24, 0] : 6,
	[24, 4] : 6,
	[6, 32] : 31,
	[6, 7] : 12,
	[30, 30] : 29,
	[19, 16] : 31,
	[8, 1] : 2,
	[25, 25] : 26,
	[27, 27] : 19,
	[12, 12] : 13,
	[8, 17] : 15,
}

signal reset()

func reset_user():
	user = {"money" : 500,"inv" : [[0,1,round(normalized_random()*100),[0], 0, ]], "unlocks" : {}, "recipes" : [[0,0]], "difficulty" : 1.0, "essence" : [0,9999,0]}
	add_unlocks()
	advance_time()
	reset.emit()

func load_user():
	var file = FileAccess.open("user://user.dat", FileAccess.READ)
	if not file:
		return null
	return file.get_var()

func save_user():
	var file = FileAccess.open("user://user.dat", FileAccess.WRITE)
	file.store_var(user)

var rng = RandomNumberGenerator.new()

func normalized_random(S = 4):
	var result = 0
	for i in range(S):
		result += rng.randf()
	return result/S

func get_price(inv_pos):
	var brik = user["inv"][inv_pos]
	var age = brik[1]
	var q = brik[2]/100.0 * 1.5
	var m = briks[brik[0]]["max price"]
	return round(abs((m*tan(sin(age/m)) + m)/3 + q*m*sin((1/5)*(age/m) + q*m)) + q*m)

func sacrifice(inv_pos):
	var brik = user["inv"][inv_pos]
	var essences = [0,0,0]
	essences[0] = int(brik[2])
	essences[1] = floor(int(brik[1]) / briks[brik[0]]["max price"])
	essences[2] = floor(get_price(inv_pos)/rng.randi_range(1,3))
	for i in range(len(user["essence"])):
		user["essence"][i] += essences[i]
	remove_brik(inv_pos)

func advance_time():
	for i in range(len(user["inv"])):
		append_price(i,get_price(i))
		if rng.randi_range(0,10) == 0:
			user["inv"][i][1] += rng.randf()*briks[user["inv"][i][0]]["max price"]*4
		elif rng.randi_range(0,50) == 0:
			user["inv"][i][1] += rng.randf()*briks[user["inv"][i][0]]["max price"]*10
		elif rng.randi_range(0,100 - user["inv"][i][2]) == 0:
			user["inv"][i][1] += rng.randf()*briks[user["inv"][i][0]]["max price"]*2
		else:
			user["inv"][i][1] += rng.randf()*briks[user["inv"][i][0]]["max price"]

func add_unlocks():
	if "profit" not in user["unlocks"]:
		user["unlocks"]["profit"] = false
	if "essence" not in user["unlocks"]:
		user["unlocks"]["essence"] = false

func check_unlocks():
	if user["money"] > 500 or len(user["inv"]) > 25:
		user["unlocks"]["profit"] = true
	if len(user["recipes"]) > 4 or len(user["inv"]) > 30 or user["money"] > 600:
		user["unlocks"]["essence"] = true
func append_price(inv_pos, price):
	var brik = user["inv"][inv_pos]
	if typeof(brik[3]) == TYPE_INT or typeof(brik[3]) == TYPE_FLOAT:
		var p = int(brik[3])
		brik[3] = [0, floor(p), price]
	else:
		brik[3].append(floor(price))
		if len(brik[3]) > 9:
			brik[3].remove_at(0)

signal brik_removed(index)
signal brik_added(brik)
signal brik_changed(index, reason)

func remove_brik(index):
	user["inv"].remove_at(index)
	brik_removed.emit(index)

func add_brik(brik):
	user["inv"].append(brik)
	brik_added.emit(brik)

func change_brik(index, brik, reason = "unknown"):
	user["inv"][index] = brik
	brik_changed.emit(index, reason)

# Called when the node enters the scene tree for the first time.
func _ready():
	var recipes_copy = recipes.duplicate(true)
	recipes = {}
	for i in recipes_copy:
		var sorted = i.duplicate()
		sorted.sort()
		recipes[sorted] = recipes_copy[i]
	if typeof(load_user()) == 0:
		reset_user()
	else:
		user = load_user()
	if "unlocks" not in user:
		user["unlocks"] = {}
	if "recipes" not in user:
		user["recipes"] = [[0,0]]
	if "difficulty" not in user:
		user["difficulty"] = 1.0
	if "essence" not in user:
		user["essence"] = [0,0,0]
	rng.randomize()
	#Debug cheats
	if OS.is_debug_build():
		user["money"] = 999999999
	for i in user["inv"]:
		if typeof(i[3]) == TYPE_INT or typeof(i[3]) == TYPE_FLOAT:
			advance_time()
			break
		if len(i) == 4:
			i.append(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	check_unlocks()
	save_user()
