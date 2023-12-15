extends CharacterBody2D

@export var speed = 500.0
var direction = Vector2.ZERO

func _ready():
	direction.x = [-1, 1].pick_random()
	direction.y = [-1, 1].pick_random()

func _physics_process(delta):
	var collision = move_and_collide(direction * speed * delta)
	if collision:
		var collider = collision.get_collider()
		direction = direction.bounce(collision.get_normal())

func reset_ball():
	var pos_x = ProjectSettings.get_setting("display/window/size/viewport_width") / 2
	var pos_y = ProjectSettings.get_setting("display/window/size/viewport_height") / 2
	global_position = Vector2(pos_x, pos_y)
