extends ConceptGraphNoiseCombiner
class_name ConceptGraphNoiseMin


func _init(noise1: ConceptGraphNoise = null, noise2: ConceptGraphNoise = null):
	._init(noise1, noise2)


func _combine_noise(x: float, y: float, z = null) -> float:
	if z == null:
		return min(noise.get_noise_2d(x, y), second_noise.get_noise_2d(x, y))
	else:
		return min(noise.get_noise_3d(x, y, z), second_noise.get_noise_3d(x, y, z))
