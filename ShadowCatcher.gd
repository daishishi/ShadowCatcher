extends Spatial

onready var cam = $Camera
onready var sc = get_viewport().size

func _physics_process(delta: float) -> void:
	var mou = get_viewport().get_mouse_position()
	var mid_screen = sc.x/2
	if mou.x < mid_screen*.7:
		cam.rotation_degrees.y += 2
	elif mou.x > mid_screen*1.3:
		cam.rotation_degrees.y -= 2
