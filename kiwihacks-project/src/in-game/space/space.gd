extends Node2D
@export var background: PackedScene
@export var player: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var background_loader = background.instantiate()
	get_tree().current_scene.add_child(background_loader)
	var spaceship_loader = player.instantiate()
	get_tree().current_scene.add_child(spaceship_loader)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
