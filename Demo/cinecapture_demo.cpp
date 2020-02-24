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
#include "opencv2/features2d/features2d.hpp"
#include "opencv2/xfeatures2d.hpp"
#include "opencv2/highgui.hpp"
#include "DfF.h"
#include "superPixel.h"
#include "calculateStack.cpp"

using namespace cv;

void writeMatToFile(cv::Mat& m, string filename)
{
	ofstream fout(filename);

	if(!fout)
	{
		cout<<"File Not Opened"<<endl;  return;
	}

	for(int i=0; i<m.rows; i++)
	{
		for(int j=0; j<m.cols; j++)
		{
			fout<<m.at<float>(i,j)<<"\t";
		}
		fout<<endl;
	}

	fout.close();
}

int main()
{
	using namespace msr::airlib;

	msr::airlib::MultirotorRpcLibClient client;
	typedef ImageCaptureBase::ImageRequest ImageRequest;
	typedef ImageCaptureBase::ImageResponse ImageResponse;
	typedef ImageCaptureBase::ImageType ImageType;
	typedef common_utils::FileSystem FileSystem;

	char text[25];
	time_t now = time(NULL);
	struct tm *t = localtime(&now);


	strftime(text, sizeof(text)-1,"%d_%m_%H_%M", t);

	try {
		client.confirmConnection();

		std::vector<Mat> imTotal;
		int focalLengh = 10;
		int i = 0;
		std::cout << "Press Enter to get FPV image" << std::endl; std::cin.get();

		int drone = 1;
		while(drone <4){
			focalLengh = 10;
			i= 0;
			imTotal.clear();
			string name = "Drone" + to_string(drone);
			string myString(text);
			string nameFolder = "/home/pablo/Documents/Unreal/Drones/Saved/screens/" + myString + "/" + name;
			string folderName = text  + nameFolder;
			std::cout << name << std::endl;
			while( i < 10) {
				std::vector<ImageRequest> request = { ImageRequest("", ImageType::Scene)};
				const std::vector<ImageResponse>& response = client.simGetImages(request, name);

				std::cout << "# of images received: " << response.size() << std::endl;

				if (response.size() > 0) {

					for (const ImageResponse& image_info : response) {


						if(image_info.image_data_uint8.size() > 0) {
							Mat m, display;
							m = cv::imdecode(image_info.image_data_uint8, 1);
							if(i!=0 && m.data!=NULL && !m.empty()){
								imTotal.push_back(m);
								ifstream ifile(nameFolder);
								string file = nameFolder + "/file" + to_string(i) + ".png";
								if (!ifile) {
									std::string command = "mkdir -p " + nameFolder;
									system(command.c_str());
								}

								std::cout << "No Empty " << file << std::endl;
								imwrite(file, m);
							}
							else{
								std::cout << "Empty " << focalLengh << std::endl;
							}
						}
						std::cout << "Image uint8 size: " << image_info.image_data_uint8.size() << std::endl;
					}
					i++;

					if(i < 10){
						focalLengh = focalLengh + 10;
					}
					std::cout << "Focal Length: " << focalLengh << std::endl;

					client.simSetFocalLength(focalLengh, name);

					std::this_thread::sleep_for(std::chrono::duration<double>(0.5));
				}
			}
			drone++;
		}
		std::cout << "Press Enter to arm the drone" << std::endl; std::cin.get();
		client.enableApiControl(true);
		client.armDisarm(true);
		std::cout << "Press Enter to takeoff" << std::endl; std::cin.get();
		float takeoffTimeout = 5;
		client.takeoffAsync(takeoffTimeout)->waitOnLastTask();

		// switch to explicit hover mode so that this is the fall back when
		// move* commands are finished.
		std::this_thread::sleep_for(std::chrono::duration<double>(5));
		client.hoverAsync()->waitOnLastTask();

		std::cout << "Press Enter to fly in a 10m box pattern at 3 m/s velocity" << std::endl; std::cin.get();
		// moveByVelocityZ is an offboard operation, so we need to set offboard mode.
		client.enableApiControl(true);
		auto position = client.getMultirotorState().getPosition();
		float z = position.z(); // current position (NED coordinate system).
		const float speed = 3.0f;
		const float size = 10.0f;
		const float duration = size / speed;
		DrivetrainType driveTrain = DrivetrainType::ForwardOnly;
		YawMode yaw_mode(true, 0);
		std::cout << "moveByVelocityZ(0, " << -speed << "," << z << "," << duration << ")" << std::endl;
		client.moveByVelocityZAsync(0, -speed, z, duration, driveTrain, yaw_mode);
		std::this_thread::sleep_for(std::chrono::duration<double>(duration));

		client.hoverAsync()->waitOnLastTask();

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



