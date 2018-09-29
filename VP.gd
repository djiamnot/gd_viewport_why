extends Spatial

func _ready():
    set_process(true)


func _process(delta):
    rotate_x(delta)
