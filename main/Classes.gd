extends Node


class Stats:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		list.owner = input_.owner

class Lord:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		number.index = input_.index

class Dummy:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		number.index = input_.index

class Avatar:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		number.index = input_.index

class Party:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		list.lord = input_.lord

class Encounter:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		array.party = []
		
		number.index = input_.index
		
		if input_.keys().has("on_srceen"):
			flag.on_srceen = input_.on_srceen
		else:
			flag.on_srceen = false 
	
	func add_lord(lord_):
		var input = {}
		input.lord = lord_
		var party_ = Party.new(input)
		array.party.append(party_)
	
	func calc_anchors():
		
		for _i in array.party.size():
			var party_ = array.party[_i]
			var img_name = "stars/0_"+String(_i)
			var length = Global.list.window_size.height * 3 / 5
			var angle = float(_i) / array.party.size() * PI * 2
			var shift = Vector2(length * cos(angle), length * sin(angle))
			shift += Global.list.window_size.center
			
			var dummy_instance =  Global.scene.dummy.instance()
			dummy_instance.name = "Core" + String(_i)
			dummy_instance.position = shift
			var sprite = dummy_instance.get_node("Sprite")
			sprite.set_texture(load("res://assets/"+img_name+".png"))
			Global.add_child_node("/root/Game/Battlefield/Dummys",dummy_instance)
			
			var bars = dummy_instance.get_node("Bars")
			var vec = -Global.data.size.shield / 2
			vec.y -= bars.get_children().size() * Global.data.size.bar.y
			bars.rect_position = vec
			bars.rect_size = Global.data.size.bar
			
			img_name = "shields/1_0"
			length = Global.list.window_size.height * 2 / 5
			angle = float(_i) / array.party.size() * PI * 2
			shift = Vector2(length * cos(angle), length * sin(angle))
			shift += Global.list.window_size.center
			dummy_instance = Global.scene.dummy.instance()
			dummy_instance.name = "Avatar" + String(_i)
			dummy_instance.position = shift
			sprite = dummy_instance.get_node("Sprite")
			sprite.set_texture(load("res://assets/"+img_name+".png"))
			Global.add_child_node("/root/Game/Battlefield/Dummys",dummy_instance)
			
			bars = dummy_instance.get_node("Bars")
			vec = -Global.data.size.shield / 2
			vec.y -= bars.get_children().size() * Global.data.size.bar.y
			bars.rect_position = vec
			#Global.ui.bar.append()

class Carcass:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		list.owner = input_.owner

class Core:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		list.owner = input_.owner

class Technique:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		list.owner = input_.owner

class Golem:
	var number = {}
	var string = {}
	var array = {}
	var list = {}
	var flag = {}
	
	func _init(input_):
		list.owner = input_.owner
