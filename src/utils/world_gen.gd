extends Node

const size = 1000

class Block:
	var type: int
	var obstacle: int = 0
	var walkable: bool

func _ready():
	pass


enum BLOCK_TYPE {
	NORMAL,
	DESERT,
	CORRUPTION
}
