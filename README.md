
# CinematicAirSim
An AddOn for AirSim that includes all the tools to integrate a cinema oriented camera

## Steps to install it:

1. Follow the instructions of https://microsoft.github.io/AirSim/docs/build_linux/ till Step 3.3
2. Copy/Replace the AirSim folder of this repo with the AirSim folder of the root repository to the  and replace all files that are asked to be replaced
3. Follow the first step from Step 3.4. If this step does not work, go to step EXTRA1.
4. Once it is compiled, follow instructions of https://microsoft.github.io/AirSim/docs/unreal_custenv/#note-for-linux-users to integrate AirSim in your existing project or just open the project "Blocks" from the folder /AirSim/Unreal/Environments/Blocks to start using the Cinematographic plugin of AirSim.

## Examples

These two videos show different examples where the possibilities of CinemAirSim are shown off. 

*  ##### Scenes from movies
In this video,  we have reproduced some scenes of films that were awarded with the Academy's Oscar for Best Photography to demonstrate the potential of the simulator and to highlight new avenues of research where it can be used.

[![](http://img.youtube.com/vi/OJGNaitWZVA/0.jpg)](http://www.youtube.com/watch?v=OJGNaitWZVA "")

*  ##### Demo of the functionalities
The example shows a simple program that executes a user prompt that allows to choose among different options to interact with Unreal and the drones of AirSim while some cinematographic aspects are read/written in real time.
The c++ code is available in https://github.com/ppueyor/CinemAirSim/tree/master/Demo

[![](http://img.youtube.com/vi/UVY-84DRi3s/0.jpg)](http://www.youtube.com/watch?v=UVY-84DRi3s "")


## Available functionalities
Additionally to the available API functionalities from AirSim, that can be found in these links:
https://microsoft.github.io/AirSim/docs/apis/
https://microsoft.github.io/AirSim/docs/apis_cpp/

This plugin adds the next options to the base API (the vehicle_name param indicates the name of drone the user wants to work with, specified in the file settings.md from AirSim - https://github.com/microsoft/AirSim/blob/master/docs/settings.md):
 *  ##### std::vector<std::string>  simGetPresetLensSettings(const std::string& vehicle_name = "");
	Returns the list of preset lens with its attributes that available for the camera
* ##### void simSetPresetLensSettings(const std::string& preset_lens_settings="", const std::string& vehicle_name = "");
	Sets one of the preset lens to the camera. (Extracted from the list got from the previous function)
 * ##### std::vector<std::string>  simGetPresetFilmbackSettings(const std::string& vehicle_name = "");
	Returns the list of preset filmback with its attributes that available for the camera
* ##### void simSetPresetFilmbackSettings(const std::string& preset_filmback_settings="", const std::string& vehicle_name = "");
	 Sets one of the preset filmback settings to the camera. (Extracted from the list got from the previous function)
* ##### std::string  simGetFilmbackSettings(const std::string& vehicle_name = "");
	 Gets the current filmback settings. (Normally used when using a custom filmback settings)
* ##### float simSetFilmbackSettings(const float sensor_width, const float sensor_heigth, const std::string& vehicle_name = "");
	 Sets custom filmback settings specifying the width and the heigth of the filmback.
* ##### float simGetFocalLength(const std::string& vehicle_name = "");
	 Gets the current Focal Length of the camera.
 * ##### void simSetFocalLength(float focal_length, const std::string& vehicle_name = "");
	 Sets the Focal Length of the camera
 * ##### void simEnableManualFocus(const bool enable, const std::string& vehicle_name = "");
	 Enable or disable the Manual Focus, linked to the Focus Distance and Focus Aperture.
 * ##### float simGetFocusDistance(const std::string& vehicle_name = "");
	 Gets the current Focus Distance of the camera in cms.
 * ##### void simSetFocusDistance(float focus_distance, const std::string& vehicle_name = "");
	 Sets the current Focus Distance of the camera in cms.
 * ##### void  simGetFocusAperture(const std::string& vehicle_name = "");
	 Gets the Focus Aperture. Ex: 2.2 would be equivalent to f/2.2
 * ##### void  simSetFocusAperture(const float aperture, const std::string& vehicle_name = "");
	 Sets the Focus Aperture. Ex: 2.2 would be equivalent to f/2.2
 * ##### void simEnableFocusPlane(const bool enable, const std::string& vehicle_name = "");
	 Enable a visible plane that indicates where the part of the plane that is in focus. (Linked to the the Focus Distance)
* ##### std::string simGetCurrentFieldOfView(const std::string& vehicle_name = "");
	 Gets the current Field Of View

[![](http://img.youtube.com/vi/OJGNaitWZVA/0.jpg)](http://www.youtube.com/watch?v=OJGNaitWZVA "")

## EXTRA1.
In my case, the build.sh from the native installation for Linux did not work. To make it work:
1. Replace the build.sh file for the build.sh from the installation folder of this repo
2. Add the folder llvm-build folder from the folder "installation" of this repo to the root of AirSim
3. Try again ./build.sh
