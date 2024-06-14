class_name Progress extends Resource

@export var current_level : String
@export var transition_id : int
# other variables can also be Vectors or Colours, etc.
# var level_completed : Array[bool]

func _init():
	current_level = "room_1"
	transition_id = 0
