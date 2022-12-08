extends Node

const step = 16

const atlas = preload("res://src/utils/atlas.tres")

func get_texture_in_atlas(id: int):
	var size = atlas.get_size() / step
	if (id >= size.x * size.y):
		return null
	var pos := Vector2.ZERO
	pos.y = floor(id / int(size.x))
	pos.x = id % int(size.x)
	var texture = atlas.duplicate()
	texture.region = Rect2(pos.x * step, pos.y * step, step, step)
	return texture
