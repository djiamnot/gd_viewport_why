extends Spatial

onready var mesh = $"MeshInstance"
onready var label = $"Viewport/Label"
onready var thisroot = $"."

func _ready():
	set_process(true)

	# Get the viewport and clear it
	var viewport = get_node("Viewport")
	viewport.set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)

	# Let two frames pass to make sure the vieport's is captured
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	mesh.material_override.set_texture(0, viewport.get_texture())

	# Note here, that thisroot id is not the same in the rendered viewport texture
	# as printed. In fact, when rendered in the mainloop they all have the same ID
	print(" *** ", thisroot)
	label.text = str(thisroot)

func _process(delta):
	rotate_x(delta*0.1)