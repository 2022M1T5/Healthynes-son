extends RigidBody2D

func _ready():
	set_physics_process(true)
func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("Vinhos"):
			body.queue_free()
			vars.pontos += 100
			print("a")
			
	
