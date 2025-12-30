# Godot-Android-Battery-Temperature-Plugin-4.2
Android plugin for Godot used to access the battery temperature of android devices. It should work on Godot versions 4.2+ but it has only been tested in version 4.5.1

## How to use it
1) Copy the GDBatteryTemp folder into the addons folder of your Godot project.
   
   ![Image of the GDBatteryTemp folder in the addons folder](Screenshots/Screenshot_step_1.png)
  
2) Activate the plugin in the project settings.
   
   ![Image of the plugin activation in Project -> Project settings -> Plugins](Screenshots/Screenshot_step_2.png)

3) Add a new node and select GodotAndroidBatteryTemperature.

   ![Image of the GodotAndroidBatteryTemperature node being added](Screenshots/Screenshot_step_3.png)
  
4) On the GodotAndroidBatteryTemperature node you will be able to call the get_battery_temperature() method, it will return the battery temperature

   ![Image of a script.gd using get_battery_temperature() method](Screenshots/Screenshot_step_4.png)
   
5) If you are exporting the project to android remember to enable gradle build otherwise the plugin won't work.
   ![Image of the correct build gradle settings while exporting the project to the Android platform](Screenshots/Screenshot_step_5.png)


There is also a demo project avaiable if you want to test the plugin, you can find it in the "Godot Android battery temperature plugin demo project" folder.
