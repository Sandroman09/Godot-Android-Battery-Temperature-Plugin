extends Node


var _plugin

func _ready() -> void:
	if OS.get_name() == "Android":
		if Engine.has_singleton("GDBatteryTemp"):
			_plugin = Engine.get_singleton("GDBatteryTemp")
		else:
			printerr("Plugin not found, Godot Android Temperature will not work")
	else:
		printerr("Plugin not found, the platform is not android, Godot Android Temperature will not work")


##Call this function to get the battery temperature, it reuturns -100.0 if the value could not be found
func get_battery_temperature() -> float:
	if _plugin:
		return _plugin.call("getBatteryTemp")
	return -100.0
