extends Node2D
var rng = RandomNumberGenerator.new()

@export var background: PackedScene
@export var player: PackedScene
@export var star: PackedScene
@export var spawning_range = 10000


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var background_loader = background.instantiate()
	get_tree().current_scene.add_child(background_loader)
	var spaceship_loader = player.instantiate()
	get_tree().current_scene.add_child(spaceship_loader)
	spawn(star)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func spawn(item, range = spawning_range, origin = Vector2(0,0) ) -> void:
	var spawn_item = item.instantiate()
	rng.randomize()
	var rand_pos_x = rng.rand_range(-range, range)
	rng.randomize()
	var rand_pos_y = rng.rand_range(-range, range)

	spawn_item.global_position.x = Vector2(origin).x + rand_pos_x

	spawn_item.global_position.y = Vector2(origin).y + rand_pos_y
	
	
	get_tree().current_scene.add_child(spawn_item)
