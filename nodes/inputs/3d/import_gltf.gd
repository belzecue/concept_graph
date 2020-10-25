extends GenericImportNode


func _init() -> void:
	._init(["*.glb", "*.gltf"])
	ignore = false
	unique_id = "import_gltf"
	display_name = "Import GLTF"
	category = "Inputs"
	description = "Load a gltf or glb file"

	set_output(0, "", DataType.NODE_3D)


func _trigger_import() -> void:
	_data = null
	var path: String = get_input_single(0, "")
	path = get_parent().get_absolute_path(path)
	var gltf = PackedSceneGLTF.new()
	gltf.pack_gltf(path)
	_data = gltf.instance()
