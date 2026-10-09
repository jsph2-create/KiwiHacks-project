extends Node2D
@export var raycast: RayCast2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func fire():
	raycast.force_raycast_update()
	if raycast.is_colliding():
		print("Hit: ", raycast.get_collider())
	
