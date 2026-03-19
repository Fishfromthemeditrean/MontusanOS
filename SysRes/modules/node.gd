extends Node
func new(type, parent, nname=null):
	var node = type.new()
	if nname:
		node.name = str(nname)
	if parent:
		parent.add_child(node)
		return node
