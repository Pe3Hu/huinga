extends Node


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
		array.sprite = []
		
		for _i in array.party.size():
			var party_ = array.party[_i]
			var length = Global.list.window_size.height / 3
			var angle = float(_i) / array.party.size() * PI * 2
			var shift = Vector2(length * cos(angle), length * sin(angle))
			shift += Global.list.window_size.center
			var img_name = "stars/0_"+String(_i)
			
			var dummy_instance =  Global.scene.dummy.instance()
			dummy_instance.name = "Lord"+String(_i)
			dummy_instance.position = shift
			var a = dummy_instance.get_children()[0]#"root")
			dummy_instance.get_children()[0].set_texture(load("res://assets/"+img_name+".png"))
			Global.add_child_node("/root/Game/Battlefield/Lords",dummy_instance)
