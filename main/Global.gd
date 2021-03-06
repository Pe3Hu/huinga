extends Node


var rng = RandomNumberGenerator.new()
var list = {}
var array = {}
var scene = {}
var node = {}
var ui = {}
var flag = {}
var data = {}

func init_window_size():
	list.window_size = {}
	list.window_size.width = ProjectSettings.get_setting("display/window/size/width")
	list.window_size.height = ProjectSettings.get_setting("display/window/size/height")
	list.window_size.center = Vector2(list.window_size.width/2, list.window_size.height/2)

func init_primary_key():
	list.primary_key = {}
	list.primary_key.lord = 0
	list.primary_key.dummy = 0
	list.primary_key.encounter = 0

func init_stats():
	list.stat = {}
	list.stat.all = ["Health","Healt Recovery","Stamina","Stamina Recovery","Mana","Mana Recovery","Critical Scale","Critical Chance",
					"Attack","Attack Speed","Accuracy","Dodge","Defense",
					"Spell","Spell Cast","Multicast","Immune","Resistant",]

func init_races():
	list.race = ["Angel","Demon"]

func init_list():
	init_window_size()
	init_primary_key()
	init_stats()
	init_races()

func init_array():
	array.lord = []
	array.dummy = []
	array.encounter = []

func init_scene():
	scene.dummy = preload("res://battle/Dummy.tscn")

func init_node():
	node.Dummys = get_node("/root/Game/Battlefield/Dummys")
	node.TimeBar = get_node("/root/Game/UI/TimeBar") 
	ui.bar = []

func init_data():
	data.size = {}
	data.size.shield = Vector2(91,97)
	data.size.bar = Vector2(91,30)

func init_flag():
	flag.ready = false

func _ready():
	init_list()
	init_array()
	init_scene()
	init_node()
	init_data()
	init_flag()

func add_child_node(parent_node_path_,child_node_):
	#set position if needed
	#child_node_.global_transform = global_transform
	var p = get_node(parent_node_path_)
	var parent_node = get_node(parent_node_path_).add_child(child_node_)
