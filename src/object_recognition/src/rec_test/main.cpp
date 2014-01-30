/*
 * main.cpp
 *
 *  Created on: Sep 7, 2013
 *      Author: aitor
 */

#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include "std_msgs/String.h"
#include "rec_msg_and_serv/rec.h"
#include <tf/transform_broadcaster.h>

class RecDemo
{
  private:
    int kinect_trials_;
    int service_calls_;
    ros::NodeHandle n_;
    std::string camera_topic_;
    bool KINECT_OK_;
    tf::Transform transform_auxiliar;
	tf::TransformBroadcaster tf_br;
	
    void
    checkCloudArrive (const sensor_msgs::Image::ConstPtr& msg)
    {
      KINECT_OK_ = true;
    }

    void
    checkKinect ()
    {
      ros::Subscriber sub_pc = n_.subscribe (camera_topic_, 1, &RecDemo::checkCloudArrive, this);
      ros::Rate loop_rate (1);
      kinect_trials_ = 0;
      while (!KINECT_OK_ && ros::ok ())
      {
        ROS_ERROR("Checking kinect status...");
        ros::spinOnce ();
        loop_rate.sleep ();
        kinect_trials_++;
        if(kinect_trials_ >= 5)
        {
          ROS_ERROR( "Kinect is not working...");
          return;
        }
      }

      KINECT_OK_ = true;
      ROS_ERROR("Kinect is up and running" );
    }

    void
    callService (const sensor_msgs::Image::ConstPtr& msg)
    {
      if( (service_calls_ % (30 * 5)) == 0)  // classify only every n-th incoming frame, e.g. (at 30 Hz) every 5 seconds
      {
        ROS_ERROR("going to call service...");
        std::vector<std::string> models;
        ros::ServiceClient client = n_.serviceClient<rec_msg_and_serv::rec>("rec");
        rec_msg_and_serv::rec srv;
        srv.request.image = *msg;
        if (client.call(srv))
        {
         ROS_ERROR("Found models: %d ", static_cast<int>(srv.response.models_found.size()));
		 
          for(size_t i=0; i < srv.response.models_found.size(); i++)
          {
            std::cout << "   => " << srv.response.models_found[i] << "(" << srv.response.confidences_found[i] << ") ";
            std::cout << " [" << srv.response.poses_found[i].position.x <<
                         ", " << srv.response.poses_found[i].position.y <<
                         ", " << srv.response.poses_found[i].position.z << "]\n";
            transform_auxiliar.setOrigin(tf::Vector3(srv.response.poses_found[i].position.x, srv.response.poses_found[i].position.y,
            srv.response.poses_found[i].position.y));
			transform_auxiliar.setRotation(tf::Quaternion( srv.response.poses_found[i].position.x, srv.response.poses_found[i].orientation.y, 
			srv.response.poses_found[i].orientation.z, srv.response.poses_found[i].orientation.w));

			tf_br.sendTransform(tf::StampedTransform(transform_auxiliar, ros::Time::now(), "openni_camera", "/target_object"));
          }
        }
        else
        {
        ROS_ERROR( "service call failed");
        }
      }
      service_calls_++;
    }

  public:
    RecDemo()
    {
      KINECT_OK_ = false;
      camera_topic_ = "/camera/rgb/image_raw";
      //~ camera_topic_ ="camera_head/image_raw";
      kinect_trials_ = 5;
    }

    bool initialize(int argc, char ** argv)
    {
      checkKinect();
      return KINECT_OK_;
    }

    void run()
    {
      ros::Subscriber sub_pc = n_.subscribe (camera_topic_, 1, &RecDemo::callService, this);
      ros::spin();
    }
};

int
main (int argc, char ** argv)
{
  ros::init (argc, argv, "rec_demo");

  RecDemo r;
  r.initialize (argc, argv);
  r.run();
  return 0;
}
