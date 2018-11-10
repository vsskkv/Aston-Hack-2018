extends "res://Resources/Player/Scripts/Entity.gd"

const SPEED = 150


func _physics_process(delta):
	_control_loop()
	movement_loop()
	spritedir_loop()

	if movedir != Vector2(0,0):
		anim_switch(spritedir)
	else:
		$Anim.stop()



func _control_loop():
	var Left = Input.is_action_pressed("ui_left")
	var Right = Input.is_action_pressed("ui_right")
	var Up = Input.is_action_pressed("ui_up")
	var Interact = Input.is_action_pressed("ui_e")

	movedir.x = -int (Left) + int (Right)
	movedir.y = - int(Up)
	

	
	