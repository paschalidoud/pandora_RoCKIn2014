/*
 * shape_simple_classifier_node.cpp
 *
 *  Created on: Sep 7, 2013
 *      Author: aitor
 */

#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include "cv_bridge/cv_bridge.h"
#include <boost/algorithm/string/predicate.hpp>
#include <boost/lexical_cast.hpp>
#include "rec_msg_and_serv/rec.h"
#include "v4r/Tracker/Tracker.h"
#include "rec/recognizer.h"
#include <ros/package.h>
#include <string>
class RecNode
{
  private:
    ros::ServiceServer rec_service_;
    ros::NodeHandle n_;
    std::vector<std::string> models_;

    Recognizer *m_recognizer;
    TomGine::tgModel m_model;
	
	
    bool recognize(rec_msg_and_serv::rec::Request & req,
                   rec_msg_and_serv::rec::Response & response)
    {

	   ROS_ERROR("start recognition ..\n");
	   if(object_flag==1)
	   {
		ROS_ERROR("checking model %s \n", models_[1].c_str() );
        loadModel(models_[1]);
        cv_bridge::CvImagePtr cv_image = cv_bridge::toCvCopy(req.image, "bgr8");;
        cv::imshow("to recognize", cv_image->image);
        cv::waitKey(10);
        TomGine::tgPose pose;
        float confidence = 0.;
        recognizeModel(cv_image->image, pose, confidence);
        if(confidence > 0.)
        {
          ROS_ERROR("recognized %s with confidence %s \n", models_[1].c_str(), confidence );
          std::string name = models_[1].substr(models_[1].find_last_of('/'), models_[1].npos);
          std_msgs::String ss;
          ss.data = name;
          geometry_msgs::Pose gPose;
          gPose.position.x = pose.t.x;
          gPose.position.y = pose.t.y;
          gPose.position.z = pose.t.z;
          gPose.orientation.x = pose.q.x;
          gPose.orientation.y = pose.q.y;
          gPose.orientation.z = pose.q.z;
          gPose.orientation.w = pose.q.w;
          response.models_found.push_back(ss);
          response.confidences_found.push_back(confidence);
          response.poses_found.push_back(gPose);
        } 
        object_flag=0;
	   }
       else if(object_flag==2)
	   {
		   ROS_ERROR("checking model %s \n", models_[2].c_str() );
        loadModel(models_[2]);
        cv_bridge::CvImagePtr cv_image = cv_bridge::toCvCopy(req.image, "bgr8");;
        cv::imshow("to recognize", cv_image->image);
        cv::waitKey(10);
        TomGine::tgPose pose;
        float confidence = 0.;
        recognizeModel(cv_image->image, pose, confidence);
        if(confidence > 0.)
        {
          ROS_ERROR("recognized %s with confidence %s \n", models_[2].c_str(), confidence );
          std::string name = models_[2].substr(models_[2].find_last_of('/'), models_[2].npos);
          std_msgs::String ss;
          ss.data = name;
          geometry_msgs::Pose gPose;
          gPose.position.x = pose.t.x;
          gPose.position.y = pose.t.y;
          gPose.position.z = pose.t.z;
          gPose.orientation.x = pose.q.x;
          gPose.orientation.y = pose.q.y;
          gPose.orientation.z = pose.q.z;
          gPose.orientation.w = pose.q.w;
          response.models_found.push_back(ss);
          response.confidences_found.push_back(confidence);
          response.poses_found.push_back(gPose);
        } 
        object_flag=0;
	   }
      ROS_ERROR( ".. done recognition.\n");

      return true;
    }

    bool check_shader_path();
    void loadModel(const std::string &modelname);
    void recognizeModel(const cv::Mat& img, TomGine::tgPose& pose, float &confidence);
    void chatterCallback(const std_msgs::String::ConstPtr& msg);

  public:
    RecNode()
    {
      check_shader_path();
      Tracking::Tracker::Parameter params;

      m_recognizer = new Recognizer(params);
    }

    ~RecNode()
    {
      delete m_recognizer;
    }

    void initialize(int num, std::vector<std::string> path)
    {
      for(int i = 0; i < num; i++)
      {
        ROS_ERROR("model: %s \n", path.at(i).c_str()); 
        models_.push_back(path.at(i).c_str());
      }

      if(models_.empty())
      {
        ROS_FATAL("need at leat one model specified, ABORTING\n");
        return;
      }
      rec_service_ = n_.advertiseService("rec", &RecNode::recognize, this);
    }

    void run()
    {
	  ros::Subscriber sub = n_.subscribe("/nlu/object", 1000, &RecNode::chatterCallback,this);
      ros::spin();
    }
    int object_flag;
};

bool RecNode::check_shader_path()
{
  std::string sp = TomGine::tgImageProcessor::getShaderPath();

  std::ostringstream os;
  os << "OpenGL shader not found in '" << sp << "'" << std::endl;
  os << "You can set the shader path by modifying the definition for ";
  os << "TOMGINE_IP_SHADER in TomGineIP/CMakeLists.txt.";

  if(sp.empty())
    std::cerr << os.str() << std::endl;

  std::string filename = sp + "ipGauss.frag";
  std::ifstream ifs(filename.c_str(), std::ios::in);
  if (!ifs)
    std::cerr << os.str() << std::endl;

  return true;
}
void RecNode::chatterCallback(const std_msgs::String::ConstPtr& msg)
{
   ROS_ERROR("I heard: [%s]", msg->data.c_str());
   if(strcmp(msg->data.c_str(),"cereal")==0)
   {
	 object_flag=1;  
   }
   else if(strcmp(msg->data.c_str(),"coke")==0)
   {
	object_flag=2;
   }
   
}
void RecNode::loadModel(const std::string &filename)
{
  m_recognizer->load(filename);
}

void RecNode::recognizeModel(const cv::Mat& img, TomGine::tgPose& pose, float &confidence)
{
  m_recognizer->recognize(img, pose, confidence);
}

int main (int argc, char ** argv)
{
  ros::init (argc, argv, "rec");

  RecNode r;
  std::vector<std::string> models;
  //~ std::string param_path = ros::package::getPath("object_recognition");
  //~ std::string temp1;
  //~ std::string temp2;
  std::string model1_path= "/home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/models/new_musli_351.sift";
  std::string model2_path= "/home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/models/can2_149f.sift";
  //~ temp1.append(model1_path);
  //~ temp2.append(model2_path);
  models.push_back(model1_path);
  models.push_back(model2_path);
  r.object_flag=0;
  r.initialize (2, models); 
  r.run();

  return 0;
}
