extends Label


@onready var AndroidBatteryTemperature : Node = $"../AndroidBatteryTemperature"


func _ready() -> void:
	refresh_battery_temperature()

func _on_timer_timeout() -> void:
	refresh_battery_temperature()


func refresh_battery_temperature() -> void:
	text = "Battery temperature degrees:  " + str(float(int(AndroidBatteryTemperature.get_battery_temperature() * 10)) / 10) + "C°"
