class_name Progress extends Resource

var current_level : String
var current_health : int
# other variables can also be Vectors or Colours, etc.
# var level_completed : Array[bool]

func _init():
	current_level = "room_1"
	current_health = 100
