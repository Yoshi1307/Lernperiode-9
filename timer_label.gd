extends Label

var time := 0.0
var running := false
var timer_label : Label

func _ready():
	timer_label = get_node("../CanvasLayer/TimerLabel")

func _process(delta):
	if running:
		time += delta
		timer_label.text = format_time(time)

func start_timer():
	if not running:
		running = true
		time = 0

func stop_timer():
	running = false

func format_time(t):
	var minutes = int(t / 60)
	var seconds = int(t) % 60
	var milliseconds = int((t - floor(t)) * 100)

	return "%02d:%02d.%02d" % [minutes, seconds, milliseconds]
