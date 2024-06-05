extends AudioStreamPlayer

@export var _duration : float = 1
var _tween : Tween

func _ready():
	set_linear_volume(0)
	process_mode = Node.PROCESS_MODE_ALWAYS

func _fade_volume(target_volume : float, duration : float) -> Signal:
	if _tween && _tween.is_running():
		_tween.kill()
	_tween = create_tween()
	_tween.tween_method(set_linear_volume, db_to_linear(volume_db), target_volume, duration)
	return _tween.finished

func set_linear_volume(linear_volume : float):
	volume_db = linear_to_db(linear_volume)

func play_track(track : AudioStream, duration : float = _duration) -> Signal:
	if playing:
		if stream == track:
			return _fade_volume(File.settings.volume, duration)
		await _fade_volume(0, duration)
	stream = track
	play()
	return _fade_volume(File.settings.volume, duration)

func fade_out(duration : float = _duration):
	await _fade_volume(0, duration)
	stop()
	stream = null
