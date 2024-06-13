extends Node3D

@onready var _transitions : Array[Node] = $Transitions.get_children()

func get_entrance(transition_id : int) -> Vector3:
	return _transitions[transition_id].entrance.global_position

func get_forward_direction(transition_id : int) -> float:
	return _transitions[transition_id].rotation.y

func activate_transitions():
	for transition in _transitions:
		transition.monitoring = true
