extends Node


var rng = RandomNumberGenerator.new()
var list = {}
var array = {}
var scene = {}
var flag = {}

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

func init_races():
	list.race = ["Angel","Demon"]

func init_list():
	init_window_size()
	init_primary_key()
	init_races()

func init_array():
	array.lord = []
	array.dummy = []
	array.encounter = []

func init_scene():
	scene.dummy = preload("res://battle/Dummy.tscn")
	
func init_flag():
	flag.ready = false

func _ready():
	init_list()
	init_array()
	init_scene()
	init_flag()

func add_child_node(parent_node_path_,child_node_):
	var p = get_node(parent_node_path_)
	var parent_node = get_node(parent_node_path_).add_child(child_node_)
	
	
	#set position if needed
	#child_node_.global_transform = global_transform
