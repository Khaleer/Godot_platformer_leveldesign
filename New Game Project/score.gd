extends Label

func _process(delta: float):
	text = "Coins: " + String(Global.coins)
