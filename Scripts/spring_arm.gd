extends SpringArm3D

@export var _rotation_speed : float = 1
@export var _min_x_rotation : float = -PI/3
@export var _max_x_rotation : float = PI/3

func look(direction : Vector2):
	rotation.x += direction.y * _rotation_speed * get_process_delta_time()
	rotation.x = clampf(rotation.x, _min_x_rotation, _max_x_rotation)
	rotation.y += direction.x * _rotation_speed * get_process_delta_time()
