tool

extends Control

var counter = 0
var vcounter = 0

# Declare member variables here. Examples:
export var text : String = "Test"
export var position : Vector2 = Vector2(0, 0)
export var letter_size : int = 16
export var image_extension : String = ".png"
export var letter_spacing : int = 0
export var vertical_spacing : int = 3


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

			var chart = TextureRect.new()
			chart.texture = load("res://font/" + i.to_lower() + image_extension)
			chart.rect_position.x = pos.x + counter*(letter_size + letter_spacing)
			chart.rect_position.y = pos.y + vcounter*(letter_size + vertical_spacing)
			chart.expand = true
			chart.rect_size = Vector2(letter_size, letter_size)
			add_child(chart)
		counter += 1

func _clear():
	for i in get_children():
		i.queue_free()