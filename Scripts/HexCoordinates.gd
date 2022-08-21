extends Node
class_name HexCoordinates

var x : int
var y : int

func _init(var x, var y):
	self.x = x
	self.y = y

func _to_string():
	return "(" + str(x) + ", " + str(get_w()) + ", " + str(y) + ")"
	
func to_string_seperate_lines():
	return str(x) + "\n" + str(get_w()) + "\n" + str(y)

func get_w() -> int:
	return -x - y
