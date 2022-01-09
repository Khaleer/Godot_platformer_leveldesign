extends Area2D

var opened = false

func _ready():
	$Panel.visible = false
	#niepotrebne jezeli w tej samej scenie
	#connect("body_entered", self, "_on_Chest_body_entered")
	#connect("body_exited", self, "_on_Chest_body_exited")

func _on_Chest_body_entered(_body):
	$Panel.visible = true
	

func _on_Chest_body_exited(_body):
	$Panel.visible = false


#func _on_Chest_input_event(brakuje wartosci):
	#if Input.is_action_pressed("Interaction"):
		#print("otwarto")
		#opened = true
		#print(opened)
	#else:
		#pass
