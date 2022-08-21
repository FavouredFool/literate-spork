extends Node2D
class_name HexCell

var coordinates : HexCoordinates
	

func set_label():
	$TextControl/CoordinateLabel.append_bbcode("[center][color=black]" + coordinates.to_string_seperate_lines() + "[/color][/center]")
