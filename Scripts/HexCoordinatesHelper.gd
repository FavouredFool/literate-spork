extends Node
class_name HexCoordinatesHelper

static func from_offset_coordinates(var x, var y) -> HexCoordinates:
	return HexCoordinates.new(x - y / 2, y)

