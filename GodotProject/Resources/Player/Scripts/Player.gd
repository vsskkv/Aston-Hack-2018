extends "res://Characters/Entity.gd"
#To prevent enemies shooting other enemies
const TYPE = "PLAYER"

var speed = 100

func _physics_process(delta):
	_contorl_loop()
	movement_loop()
	spritedir_loop()
	
	if movedir != dir.CENTER:
		anim_switch(spritedir)
	else:
		$Anim.stop()

func _control_loop():
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	var up = Input.is_action_pressed("ui_up")
	var interact = Input.is_action_pressed("ui_e")
	var attack = Input.is_action_pressed("ui_select")
