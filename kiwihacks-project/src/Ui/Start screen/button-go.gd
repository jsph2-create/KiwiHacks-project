extends Button
@export var button_go_location: PackedScene

func _on_pressed() -> void:
	get_tree().change_scene_to_packed(button_go_location)
