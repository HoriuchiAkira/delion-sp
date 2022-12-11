extends Node

class Tile:
	var biome: int
	var obstacle: int = 0
	var custom_obstacle_color = null
	var custom_color = null
	var walkable: bool
	var v_flip: bool = false
	var h_flip: bool = false
	
	func _init(
		biome: int, 
		obstacle: int,
		walkable: bool,
		custom_color: Color = Color(255, 255, 255, 255) / 255.0,
		custom_obstacle_color: Color = Color(255, 255, 255, 255) / 255.0,
		v_flip: bool = false,
		h_flip: bool = false
	):
		self.biome = biome
		self.obstacle = obstacle
		self.walkable = walkable
		self.custom_color = custom_color
		self.custom_obstacle_color = custom_obstacle_color
		self.v_flip = v_flip
		self.h_flip = h_flip
		

enum BIOME_TYPE {
	NORMAL,
	DESERT,
	CORRUPTION
}

enum TILES {
	EMPTY = 0,
	SOLID = 253,
	
	GRASS_1 = 1,
	GRASS_2 = 5,
	GRASS_3 = 7,
	
	FLOWER_1 = 3,
	FLOWER_2 = 4,
	FLOWER_3 = 6
}
