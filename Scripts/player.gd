extends Node

@export var _character : CharacterBody3D
@export var _spring_arm : SpringArm3D
@onready var _gm : Node3D = $/root/Game
var _input_direction : Vector2
var _move_direction : Vector3

func _input(event : InputEvent):
	if event.is_action_pressed("pause"):
		_gm.toggle_pause()
	if get_tree().paused:
		return
	if event.is_action_pressed("run"):
		_character.run()
	elif event.is_action_released("run"):
		_character.walk()
	elif event.is_action_pressed("jump"):
		_character.start_jump()
	elif event.is_action_released("jump"):
		_character.complete_jump()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta : float):
	if get_tree().paused:
		return
	_spring_arm.look(Input.get_vector("look_left", "look_right", "look_up", "look_down"))
	_input_direction = Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	_move_direction = (_spring_arm.basis.x * Vector3(1, 0, 1)).normalized() * _input_direction.x
	_move_direction += (_spring_arm.basis.z * Vector3(1, 0, 1)).normalized() * _input_direction.y
	_character.move(_move_direction)
