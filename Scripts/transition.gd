extends Area3D

@export var _connects_to : String

func _on_body_entered(_body : Node3D):
	File.progress.current_level = _connects_to
	$/root/Game.load_level()
