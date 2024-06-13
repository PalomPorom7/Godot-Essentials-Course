extends Area3D

@export var _connects_to : String
@export var _transition_id : int
@onready var entrance = $Entrance

func _on_body_entered(_body : Node3D):
	File.progress.current_level = _connects_to
	File.progress.transition_id = _transition_id
	$/root/Game.load_level()
