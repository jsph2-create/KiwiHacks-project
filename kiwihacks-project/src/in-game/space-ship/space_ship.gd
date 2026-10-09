extends CharacterBody2D

@export_category("ship stats")
@export var default_speed_max := 300.0
@export var default_accelleration := 1.0
@export var default_decelleration := -1.0

var speed_max = default_speed_max
var vec_direction
var last_location

func _physics_process(delta: float) -> void:
	last_location = global_position
	#basic player movement
	vec_direction = Input.get_vector("leftwards", "rightwards", "forwards", "backwards")

	if last_location.distance_to(global_position) < speed_max:
		if vec_direction == Vector2.ZERO:
			velocity = velocity.move_toward(Vector2.ZERO, default_decelleration * delta)
			print("afsdafl")
		else: 
			velocity = velocity.move_toward(vec_direction * speed_max, default_accelleration * delta)
			

	
	
		
	

	#turn to mouse
	var target_angle = (get_global_mouse_position() - global_position).angle()
	rotation = lerp_angle(rotation, target_angle, 15 * delta)
	rotation_degrees = wrap(rotation_degrees, 0, 360)

	move_and_slide()
