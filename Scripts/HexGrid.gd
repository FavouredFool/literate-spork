extends Node2D

const width : int = 6
const height : int = 6

onready var hex_cell_packed : PackedScene = preload("res://Scenes/HexCell.tscn")

var hex_cell_array = []

func _ready():
	var i : int = 0
	for y in height:
		for x in width:
			create_cell(x, y, i)
			i += 1

func create_cell(var x, var y, var i):
	var position : Vector2
	position.x = (x + y * 0.5 - y / 2) * (HexMetrics.innerRadius * 2.0)
	position.y = y * (HexMetrics.outerRadius * 1.5)
	
	hex_cell_array.push_back(hex_cell_packed.instance())
	add_child(hex_cell_array[i])
	hex_cell_array[i].position = position
	
	hex_cell_array[i].coordinates = HexCoordinatesHelper.from_offset_coordinates(x, y)
	hex_cell_array[i].set_label()
