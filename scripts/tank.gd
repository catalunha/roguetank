extends KinematicBody2D

var speed = 100
var pre_bullet = preload("res://scenes/bullet.tscn")

func _ready():
	pass 



func _process(delta):
	var dir_x = 0
	if Input.is_action_pressed("ui_right"):
		dir_x += 1
	if Input.is_action_pressed("ui_left"):
		dir_x -= 1
	
	var dir_y = 0
	if Input.is_action_pressed("ui_down"):
		dir_y += 1
	if Input.is_action_pressed("ui_up"):
		dir_y -= 1
	if Input.is_action_just_pressed("ui_shoot"):
		print("boom")
		if get_tree().get_nodes_in_group("cannon_bullets").size() < 3 :
			var bullet = pre_bullet.instance()
			bullet.global_position = $barrel/muzzle.global_position
#			$"../".add_child(bullet)
			get_parent().add_child(bullet)

	translate(Vector2(dir_x,dir_y)*delta*speed)


	pass
