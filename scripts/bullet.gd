extends Area2D

var vel = 250
var dir = Vector2(0,-1)

func _ready():
	pass 


func _process(delta):
	translate(dir*vel*delta)


func _on_notifier_screen_exited():
	print("_on_notifier_screen_exited")
	print("queue_free")
	queue_free()
