class_name AgariumRotateAllDoubleQuadXR
extends Node

@export var _rotatable_double_quad_xr: Array[AgariumDoubleQuadXR] = []
@export var _left_eye_camera_anchor: Node3D
@export var _right_eye_camera_anchor: Node3D

@export var _auto_field_with_camera_if_empty: bool = true
@export var _auto_refresh_list_at_ready: bool = true

func _ready() -> void:
	if _auto_field_with_camera_if_empty:
		var main_camera := get_viewport().get_camera_3d()
		if main_camera != null:
			if _left_eye_camera_anchor == null:
				_left_eye_camera_anchor = main_camera
			if _right_eye_camera_anchor == null:
				_right_eye_camera_anchor = main_camera
	if _auto_refresh_list_at_ready:
		refresh_rotatable_double_quad_xr_list()

func _process(delta: float) -> void:
	if _left_eye_camera_anchor == null or _right_eye_camera_anchor == null:
		return
	for double_quad in _rotatable_double_quad_xr:
		if double_quad == null:
			continue
		double_quad.look_at_left_camera_point(_left_eye_camera_anchor.global_position)
		double_quad.look_at_right_camera_point(_right_eye_camera_anchor.global_position)


func refresh_rotatable_double_quad_xr_list() -> void:
	var root := get_tree().current_scene
	if root == null:
		_rotatable_double_quad_xr.clear()
		return
	_rotatable_double_quad_xr = _find_nodes(root)


func _find_nodes(node: Node) -> Array[AgariumDoubleQuadXR]:
	var result: Array[AgariumDoubleQuadXR] = []

	if node is AgariumDoubleQuadXR:
		result.append(node)

	for child in node.get_children():
		result.append_array(_find_nodes(child))

	return result
