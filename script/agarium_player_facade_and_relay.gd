class_name AgariumPlayerFacadeAndRelay
extends Node3D



# signal on_default_double_joystick_input(left_joystick: Vector2, right_joystick: Vector2)
# signal on_split_request()
# signal on_fire_food_request_forward()
# signal on_fire_food_request_toward_point(target_point: Vector3)
# signal on_player_score_changed(player_score: int)
# signal on_cursor_position_updated(cursor_position: Vector3)


# @export var _current_player_score: int = 0
# @export var _player_position: Vector3 = Vector3.ZERO
# @export var _player_rotation: Quaternion = Quaternion.IDENTITY
# @export var _player_cursor_position: Vector3 = Vector3.ZERO


# func get_player_score() -> int:
# 	return _current_player_score

# func set_player_score(new_score: int) -> void:
# 	_current_player_score = new_score
# 	on_player_score_changed.emit(new_score)


# func set_player_move_position(new_position: Vector3) -> void:
# 	_player_position = new_position
# func set_player_move_rotation(new_rotation: Quaternion) -> void:
# 	_player_rotation = new_rotation

# func set_player_cursor_position(new_cursor_position: Vector3) -> void:
# 	_player_cursor_position = new_cursor_position
# 	on_cursor_position_updated.emit(new_cursor_position)
