extends Node
var exploder = preload("uid://b2ih44b2xcht2")


func explode(obj_global_pos) -> void:
	var expos = exploder.instantiate()
	expos.global_position = obj_global_pos
	get_tree().current_scene.add_child(expos)
