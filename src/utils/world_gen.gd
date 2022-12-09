extends Node

const size = 1000

class Block:
	var biome: int
	var obstacle: int = 0
	var custom_obstacle_color = null
	var custom_color = null
	var walkable: bool
#	var rotation: int
	var v_flip: bool = false
	var h_flip: bool = false
	

func _ready():
	pass


enum BIOME_TYPE {
	NORMAL,
	DESERT,
	CORRUPTION
}
