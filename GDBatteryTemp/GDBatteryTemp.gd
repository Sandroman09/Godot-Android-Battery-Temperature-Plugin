@tool
extends EditorPlugin


var export_plugin : AndroidExportPlugin

func _enter_tree():
	export_plugin = AndroidExportPlugin.new()
	add_export_plugin(export_plugin)
	add_custom_type(
		"AndroidBatteryTemperature",
		"Node",
		preload("res://addons/GDBatteryTemp/AndroidBatteryTemperature.gd"),
		preload("res://addons/GDBatteryTemp/BatteryIcon.png") as Texture2D,
	)



func _exit_tree():
	remove_export_plugin(export_plugin)
	export_plugin = null


class AndroidExportPlugin extends EditorExportPlugin:
	var _plugin_name = "GDBatteryTemp"

	func _supports_platform(platform):
		if platform is EditorExportPlatformAndroid:
			return true
		return false

	func _get_android_libraries(platform, debug):
		if debug:
			return PackedStringArray(["GDBatteryTemp/app-release.aar"])
		else:
			return PackedStringArray(["GDBatteryTemp/app-release.aar"])


	func _get_name():
		return _plugin_name
