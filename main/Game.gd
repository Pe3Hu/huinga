extends Node


func _ready():
	init_lords()
	init_encounters()

func init_lords():
	var lord_count = 2
	
	for _i in lord_count:
		var input = {}
		input.index = Global.list.primary_key.lord
		var lord = Classes.Lord.new(input)
		Global.array.lord.append(lord)
		Global.list.primary_key.lord += 1
	
	

func init_encounters():
	var encounter_count = 1
	
	for _i in encounter_count:
		var input = {}
		input.index = Global.list.primary_key.encounter
		input.on_srceen = true
		var encounter = Classes.Encounter.new(input)
		Global.array.encounter.append(encounter)
		Global.list.primary_key.encounter += 1
	
	Global.array.encounter[0].add_lord(Global.array.lord[0])
	Global.array.encounter[0].add_lord(Global.array.lord[1])
	Global.array.encounter[0].calc_anchors()
	

func _process(delta):
	pass
