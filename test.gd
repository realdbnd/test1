extends Node2D
onready var sprite: Sprite = $Sprite
onready var button: Button = $Button

func _ready() -> void :
	button.connect("pressed", self, "play_tween")

func play_tween():
	var start_position: = sprite.position
	var t: = sprite.create_tween()
	t.set_parallel(true)
	t.tween_property(sprite, "position", start_position + Vector2(200.0, 0.0), 1.0)
	t.tween_property(sprite, "rotation", PI, 2.5)
	t.chain()
	t.tween_property(sprite, "position", start_position, 1.0)
	t.tween_property(sprite, "rotation", 0.0, 0.5)





