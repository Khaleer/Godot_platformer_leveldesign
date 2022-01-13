extends KinematicBody2D

export var run_speed = 200
export var jump_speed = -350
export var gravity = 1000

var velocity = Vector2()

func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed("right")
	var left = Input.is_action_pressed('left')
	var jump = Input.is_action_just_pressed('jump')

	if is_on_floor() and jump:
		velocity.y = jump_speed
	if right:
		velocity.x += run_speed
	if left:
		velocity.x -= run_speed

func _physics_process(delta):
	velocity.y += gravity * delta
	get_input()
	velocity = move_and_slide(velocity, Vector2(0, -1))
	if Input.is_action_pressed("right"):
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("left"):
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("idle")

