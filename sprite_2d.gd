extends Sprite2D

@export var speed = 400
@export var angular_speed = PI

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello, world!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
