tool

extends Control

var counter = 0
var vcounter = 0

export var text : String = "Test"
export var position : Vector2 = Vector2(0, 0)


export var letter_size : int = 16
export var letter_spacing : int = 3
export var vertical_spacing : int = 3

export var image_extension : String = ".png"

export var font_path : String = "res://font/"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_clear()
	_print(position, text)

func _print(pos : Vector2, text : String):
	counter = 0
	vcounter = 0
	for i in text:
		if (i == "/"):
			vcounter += 1
			counter = -1
		if (i != " " and i != "/"):

			var tex = TextureRect.new()
			tex.texture = load(font_path + i.to_lower() + image_extension)
			tex.rect_position.x = pos.x + counter*(letter_size + letter_spacing)
			tex.rect_position.y = pos.y + vcounter*(letter_size + vertical_spacing)
			tex.expand = true
			tex.rect_size = Vector2(letter_size, letter_size)
			add_child(tex)
		counter += 1

func _clear():
	for i in get_children():
		i.queue_free()
