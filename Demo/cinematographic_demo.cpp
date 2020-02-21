// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

#include "common/common_utils/StrictMode.hpp"
STRICT_MODE_OFF
#ifndef RPCLIB_MSGPACK
#define RPCLIB_MSGPACK clmdep_msgpack
#endif // !RPCLIB_MSGPACK
#include "rpc/rpc_error.h"
STRICT_MODE_ON

#include "vehicles/multirotor/api/MultirotorRpcLibClient.hpp"
#include "common/common_utils/FileSystem.hpp"
#include <iostream>
#include <chrono>

int main()
{
	using namespace msr::airlib;
	using namespace std;

	msr::airlib::MultirotorRpcLibClient client;
	typedef ImageCaptureBase::ImageRequest ImageRequest;
	typedef ImageCaptureBase::ImageResponse ImageResponse;
	typedef ImageCaptureBase::ImageType ImageType;
	typedef common_utils::FileSystem FileSystem;

	try {
		client.confirmConnection();
		client.enableApiControl(true);
		client.armDisarm(true);

		std::cout << "Press Enter to start the cinematographic demo" << std::endl; std::cin.get();
		bool continueInternalLoop = true, planeEnabled = false, manualFocusEnabled = true, continueMainLoop = true;
		int optionMainLoop, selectionInternalLoop;
		while(continueMainLoop){
			std::cout << "You can test these different settings: " << std::endl;
			std::cout << "-----------------------" << std::endl;
			std::cout << "1: Predefined Preset Lens" << std::endl;
			std::cout << "2: Predefined Preset FilmBack Settings " << std::endl;
			std::cout << "3: Custom Filmback (width and height of the viewport) " << std::endl;
			std::cout << "4: Focal Length" << std::endl;
			if(manualFocusEnabled){
				std::cout << "5: Deactivate Manual Focus " << std::endl;
				if(planeEnabled){
					std::cout << "6: Deactivate Focus Distance Debug Plane " << std::endl;
				}
				else{
					std::cout << "6: Activate Focus Distance Debug Plane " << std::endl;
				}
				std::cout << "7: Focus Distance" << std::endl;
				std::cout << "8: Focus Aperture" << std::endl;
			}
			else{
				std::cout << "5: Activate Manual Focus " << std::endl;
			}
			std::cout << "0: End Program" << std::endl;
			std::cout << "-----------------------" << std::endl;
			std::cout << "Please select an option to test: " << std::endl;
			std::cin >> optionMainLoop;
			continueInternalLoop = true;
			switch(optionMainLoop){
			case 1:
				while(continueInternalLoop){
					std::cout << "Predefined preset lens" << std::endl;
					std::cout << "-----------------------" << std::endl;
					std::vector<string> presetLens = client.simGetPresetLensSettings();
					string presetLensNames[presetLens.size()];
					int index = 0;
					for(auto&& lens: presetLens){
						std::cout << "Index: "<< index << "\n" << lens << '\n';
						int endIndex =  lens.find(";");
						std::string name =lens.substr(6, endIndex - 6);
						presetLensNames[index] = name;
						index ++;
					}
					cout << "Type a number of the list to change the lens (anything else to go back to main menu): ";
					std::cin >> selectionInternalLoop;
					if(selectionInternalLoop >= 0 && selectionInternalLoop < presetLens.size()) {
						std::cout << presetLensNames[selectionInternalLoop] << std::endl;
						client.simSetPresetLensSettings(presetLensNames[selectionInternalLoop]);
						std::cout << "Current Field of View (FOV): " << client.simGetCurrentFieldOfView() << "\n";
					}
					else{
						continueInternalLoop = false;
					}
				}
				break;
			case 2:
				while(continueInternalLoop){
					std::cout << "Predefined preset filmback settings" << std::endl;
					std::cout << "---------------------------" << std::endl;
					std::vector<string> presetFilmback = client.simGetPresetFilmbackSettings();
					string presetFilmbacksNames[presetFilmback.size()];
					int index = 0;
					for(auto&& filmback: presetFilmback){
						std::cout << "Index: "<< index << "\n" << filmback << '\n';
						int endIndex =  filmback.find(";");
						std::string name =filmback.substr(6, endIndex - 6);
						presetFilmbacksNames[index] = name;
						index ++;
					}
					cout << "Type a number of the list to change the lens (anything else to go back to main menu): ";
					std::cin >> selectionInternalLoop;
					if(selectionInternalLoop >= 0 && selectionInternalLoop < presetFilmback.size()) {
						std::cout << presetFilmbacksNames[selectionInternalLoop] << std::endl;
						client.simSetPresetFilmbackSettings(presetFilmbacksNames[selectionInternalLoop]);
					}
					else{
						continueInternalLoop = false;
					}
				}
				break;
			case 3:
				while(continueInternalLoop){
					float width, heigth;
					std::cout << "Current Filmback is:" << std::endl;
					std::cout << "---------------------------" << std::endl;
					string currentFilmback = client.simGetFilmbackSettings();
					int index = 0;
					std::cout << currentFilmback << "\n";
					std::cout << "Current Field of View (FOV): " << client.simGetCurrentFieldOfView() << "\n";
					std::cout << "Please select the new width in mms (-1 to go back to main menu)" << std::endl;
					std::cin >> width;
					if(width > 0) {
						std::cout << "Please select the new height in mms of the filmback (anything else to go back to main menu)" << std::endl;
						std::cin >> heigth;
					}
					if(width > 0 && heigth > 0) {
						client.simSetFilmbackSettings(width, heigth);
					}
					else{
						continueInternalLoop = false;
					}
				}
				break;
			case 4:
				while(continueInternalLoop){
					float focalLength;
					std::cout << "Current focal length is:" << std::endl;
					std::cout << client.simGetFocalLength() << "\n";
					std::cout << "Current Field of View (FOV): " << client.simGetCurrentFieldOfView() << "\n";
					std::cout << "Please select the new focal length in mms (-1 to go back to main menu)" << std::endl;
					std::cin >> focalLength;
					if(focalLength > 0) {
						client.simSetFocalLength(focalLength);
					}
					else{
						continueInternalLoop = false;
					}
				}
				break;
			case 5:
				if (manualFocusEnabled){
					client.simEnableManualFocus(false);
					manualFocusEnabled = false;
					std::cout << "Manual Focus is disabled." << std::endl;
				}
				else{
					client.simEnableManualFocus(true);
					manualFocusEnabled = true;
					std::cout << "Manual Focus is enabled." << std::endl;
				}
				break;
			case 6:
				if (planeEnabled){
					client.simEnableFocusPlane(false);
					planeEnabled = false;
					std::cout << "Debug Focus Distance Plane is disabled." << std::endl;
				}
				else{
					client.simEnableFocusPlane(true);
					planeEnabled = true;
					std::cout << "Debug Focus Distance Plane is enabled." << std::endl;
				}
				break;
			case 7:
				continueInternalLoop = true;
				while(continueInternalLoop){
					float focusDistance;
					std::cout << "Current focusDistance length is:" << std::endl;
					std::cout << client.simGetFocusDistance() << "\n";
					std::cout << "Please select the new focus distance in cms (-1 else to go back to main menu)" << std::endl;
					std::cin >> focusDistance;
					if(focusDistance > 0) {
						client.simSetFocusDistance(focusDistance);
					}
					else{
						continueInternalLoop = false;
					}
				}
				break;
			case 8:
				while(continueInternalLoop){
					float focusAperture;
					std::cout << "Current Focus Aperture: " << client.simGetFocusAperture() << "\n";
					std::cout << "Please select new focus aperture (-1 else to go back to main menu)" << std::endl;
					std::cin >> focusAperture;
					if(focusAperture > 0) {
						client.simSetFocusAperture(focusAperture);
					}
					else{
						continueInternalLoop = false;
					}
				}
				break;
			case 0:
				continueMainLoop = false;
			}
		}

		std::cout << "Press Enter to land" << std::endl; std::cin.get();
		client.landAsync()->waitOnLastTask();

		std::cout << "Press Enter to disarm" << std::endl; std::cin.get();
		client.armDisarm(false);

	}

	catch (rpc::rpc_error&  e) {
		std::string msg = e.get_error().as<std::string>();
		std::cout << "Exception raised by the API, something went wrong." << std::endl << msg << std::endl;
	}

	return 0;
}

