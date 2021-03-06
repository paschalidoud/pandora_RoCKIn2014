/*
 * Software License Agreement (GNU General Public License)
 *
 *  Copyright (c) 2011, Thomas Mörwald
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @author thomas.moerwald
 *
 */
#include "rec/recognizer.h"

using namespace blortRecognizer;
using namespace std;

Recognizer::Recognizer(const Tracking::Tracker::Parameter &params)
{
  CameraParameter recParams;
  recParams.w = params.camPar.width;
  recParams.h = params.camPar.height;
  recParams.fx = params.camPar.fx;
  recParams.fy = params.camPar.fy;
  recParams.cx = params.camPar.cx;
  recParams.cy = params.camPar.cy;
  recParams.k1 = params.camPar.k1;
  recParams.k2 = params.camPar.k2;
  recParams.k3 = params.camPar.k3;
  recParams.p1 = params.camPar.p1;
  recParams.p2 = params.camPar.p2;
  m_recognizer = new Recognizer3D(recParams, false);

  m_cam_pose.SetPose(params.camPar.rot, params.camPar.pos);
}

Recognizer::~Recognizer()
{
  delete m_recognizer;
}

void Recognizer::recognize(const cv::Mat& img, TomGine::tgPose& pose, float &confidence)
{
  IplImage ipl_img(img);
  m_recognizer->recognize(&ipl_img, pose, confidence);
}

void Recognizer::load(const std::string& filename)
{
  m_recognizer->loadModelFromFile(filename.c_str());

  cout << "[Recognizer::load] SIFTS: " << m_recognizer->getNumberOfSifts() << endl;
}

