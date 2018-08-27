extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 100
const JUMP_HEIGHT = -500

var motion = Vector2()#Movimento

func _physics_process(delta):
	motion.y += GRAVITY#Movimento.y somado com ele mesmo e força da gravidade (GRAVITY)
	if Input.is_action_pressed("ui_right"):#Se precionar seta direita
		motion.x = SPEED#Movimento.x recebe valor positivo de SPEED
	elif Input.is_action_pressed("ui_left"):#Se precionar seta esquerda
		motion.x = -SPEED#Movimento.x recebe valor negativo de SPEED
	else:#Se no precionar nehuma das setas
		motion.x = 0#Movimento  igual a 0
	
	if is_on_floor():#Se estiver no chao
		if Input.is_action_pressed("ui_up"):#Se precionar seta p/ cima
			motion.y = JUMP_HEIGHT#Movimento.y recebe o valor de pulo (JUMP_HEIGHT)
		
	motion = move_and_slide(motion,UP)#Move o player passando um Vector2