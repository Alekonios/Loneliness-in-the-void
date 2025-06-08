
class_name AreaProperties
extends Node3D

@export var AreaLabel: Label
@export var AreaCamera: Camera3D

var IsInArea: bool = false
var player: Player
var _CameraManager: CameraManager


func _physics_process(delta: float) -> void:
		AreaCamera.look_at(player.global_position)


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body is Player:
		IsInArea = true
		player = body

		_CameraManager = player.get_node("Components/CameraManager")
		
		player.DefaultCamera.current = false
		AreaCamera.current = true

#func _on_area_3d_body_exited(body: Node3D) -> void:
	#if body is Player:
		#IsInArea = false

		#AreaCamera.current = false
		#player.DefaultCamera.current = true
