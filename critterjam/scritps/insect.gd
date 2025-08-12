extends CharacterBody2D

func _ready() -> void:
	set_velocity(Vector2(200, 250))

func _physics_process(delta: float) -> void:
	var coll_info : KinematicCollision2D = move_and_collide(velocity * delta)
	if coll_info:
		velocity = velocity.bounce(coll_info.get_normal())