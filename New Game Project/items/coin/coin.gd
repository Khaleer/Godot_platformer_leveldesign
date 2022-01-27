extends Area2D


signal coin_collected

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_coin_body_entered(body: Node) -> void:
	if body.is_in_group("Player"):
		collected()

func collected():
	emit_signal("coin_collected")
	Global.coin_collected = true
	queue_free()
