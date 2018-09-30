extends Spatial

onready var vp = preload("res://VP.tscn")

func _ready():
	for i in range(0, 10):
		var ch = vp.instance()
		print(" --- ", ch)
		ch.translate(Vector3(randf(), randf(), 0))
		add_child(ch)