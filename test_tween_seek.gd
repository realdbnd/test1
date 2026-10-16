extends Node2D

onready var t: Tween = $Tween
onready var s: Sprite = $Sprite

var timer: = 0.0

func _ready() -> void :
	t.interpolate_property(s, "position", Vector2(0.0, 0.0), Vector2(100.0, 0.0), 1.0, Tween.TRANS_EXPO, Tween.EASE_OUT)
	t.interpolate_property(s, "position", Vector2(100.0, 0.0), Vector2(0.0, 0.0), 1.0, Tween.TRANS_EXPO, Tween.EASE_OUT, 1.0)
	

func _process(delta: float) -> void :
	
	var b: = t.seek(timer)
	timer += delta
	if timer > 10.0:
		timer = 0.0
	print("b: %s time %s runtime %s tell %s" % [b, timer, t.get_runtime(), t.tell()])

