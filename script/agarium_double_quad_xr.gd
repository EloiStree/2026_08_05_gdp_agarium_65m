## Make two quads follow the camera.
## if in XR, one follow left eye and the second right eye.
class_name AgariumDoubleQuadXR
extends Node3D

@export var _left_eye_quad: Node3D
@export var _right_eye_quad: Node3D
@export var _center_to_border_radius_anchor: Node3D
@export var _center_anchor: Node3D

func get_radius_in_world_meter()->float:
	return _center_anchor.distance(_center_to_border_radius_anchor.position)

func look_at_single_camera_point(camera: Vector3) -> void:
	_node3d_look_at_point(_left_eye_quad, camera)
	_node3d_look_at_point(_right_eye_quad, camera)


func look_at_left_camera_point(camera: Vector3) -> void:
	_node3d_look_at_point(_left_eye_quad, camera)


func look_at_right_camera_point(camera: Vector3) -> void:
	_node3d_look_at_point(_right_eye_quad, camera)


func _node3d_look_at_point(node_to_rotate: Node3D, camera_point: Vector3) -> void:
	if node_to_rotate == null:
		return

	# Preserve current position; only rotate.
	var pos := node_to_rotate.global_position

	# Avoid look_at() when the target is at the same position.
	if pos.distance_squared_to(camera_point) < 0.000001:
		return

	node_to_rotate.look_at(camera_point, Vector3.UP)
