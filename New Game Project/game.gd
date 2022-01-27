extends Node2D


var coins = 0


func _on_coin_coin_collected() -> void:
	coins = coins + 1
	var score = "Coins: " + String(coins)
	Global.coins += 1
