extends Node
var apps = globals.apps
func appinit(nname):
	print(globals.apps)
	if nname and globals.apps:
		var ins = nname.new()
		globals.apps.add_child(ins)
		ins.main()
		print("appinit")
