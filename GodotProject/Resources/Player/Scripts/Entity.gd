extends KinematicBody2D

const TYPE = "ENEMY"
const SPEED = 0

var movedir = dir.CENTER
var spritedir = "idle"

func movement_loop():
	var motion = movedir.normalized() * SPEED
	move_and_slide(motion, Vector2(0,0))

func spritedir_loop():
	match movedir:
		dir.left:
			spritedir = "left"
		dir.RIGHT:
			spritedir = "Right"
		dir.UP:
			spritedir = "Up"
		dir.DOWN:
			spritedir = "Down"
	
#This function which actually gets the animation player($Anim) to change its animation.
func anim_switch(animation):
	var newanim = str(spritedir)
	if $Anim.current_animation != newanim:
		$Anim.play(newanim)