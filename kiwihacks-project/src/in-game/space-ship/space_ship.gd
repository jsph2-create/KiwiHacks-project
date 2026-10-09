extends CharacterBody2D


@export var default_speed = 300.0
var speed = default_speed

var vec_direction

func _physics_process(delta: float) -> void:

	vec_direction = Input.get_vector("leftwards", "rightwards", "forwards", "backwards")
	velocity = vec_direction * speed 
	move_and_slide()
