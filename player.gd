extends CharacterBody2D

const SPEED = 400.0
var direction = Vector2.ZERO

@export var side = "left"

func _physics_process(delta):
	if side == "left":
		direction.y = get_input(KEY_Q, KEY_S)
	else:
		direction.y = get_input(KEY_O, KEY_K)

	move_and_collide(direction * SPEED * delta)

func get_input(up, down):
	if Input.is_key_pressed(up):
		return -1
	elif Input.is_key_pressed(down):
		return 1

	return 0
