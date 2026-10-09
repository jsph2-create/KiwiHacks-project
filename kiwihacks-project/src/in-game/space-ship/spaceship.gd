extends CharacterBody2D
var type = "ship"
@export var laser_gun : Node2D

@export_category("ship stats")
@export var default_speed_max := 500.0
@export var default_accelleration := 1000.0
@export var default_decelleration := 1000.0

@export_category("other exports")
@export var ani : AnimationPlayer

var speed_max = default_speed_max
var vec_direction
var last_location
var matter := 0
var fuel = 100

func detect_fire() -> void:
	if Input.is_action_just_pressed("fire"):
		laser_gun.fire()
		
		


func _physics_process(delta: float) -> void:
	detect_fire()
	
	last_location = global_position
	#basic player movement
	vec_direction = Input.get_vector("leftwards", "rightwards", "forwards", "backwards")

	if vec_direction == Vector2.ZERO:
		velocity = velocity.move_toward(Vector2.ZERO, default_decelleration * delta)
		ani.stop()
		ani.play("off")
	else: 
		velocity = velocity.move_toward(vec_direction * speed_max, default_accelleration * delta)
		ani.play("move")

	#turn to mouse
	var target_angle = (get_global_mouse_position() - global_position).angle()
	rotation = lerp_angle(rotation, target_angle, 15 * delta)
	rotation_degrees = wrap(rotation_degrees, 0, 360)

	move_and_slide()
