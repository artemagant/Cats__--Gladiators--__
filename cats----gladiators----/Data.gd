extends Node

# List of stages of game
var stages:PackedStringArray = [
	# 1 - Starting Village 
	"res://Scenes/Stages/Starting_Village/Starting_Village.tscn",
]
# Index of current stage
var stage = 0
# Maximum index for stage
var max_stage = stages. size() - 1
