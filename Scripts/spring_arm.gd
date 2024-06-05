extends SpringArm3D

@export var _rotation_speed : float = 1
@export var _min_x_rotation : float = -PI/3
@export var _max_x_rotation : float = PI/3

func look(direction : Vector2):
	# vertical y rotation
	rotation.x += direction.y * _rotation_speed * get_process_delta_time() * (1 if File.settings.camera_invert_y else -1)
	rotation.x = clampf(rotation.x, _min_x_rotation, _max_x_rotation)
	# horizontal x rotation
	rotation.y += direction.x * _rotation_speed * get_process_delta_time() * (1 if File.settings.camera_invert_x else -1)
