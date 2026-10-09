extends Node2D
@export var type = "star"
@export var explode_ani : AnimationPlayer

func explode() -> void:
	Explode.explode(global_position)
	explode_ani.play("nukeself")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	explode()


func explode() -> void:
	Explode.explode(global_position)
	explode_ani.play("nukeself")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func select_glow(status = true) -> void:
	pass
	
	

