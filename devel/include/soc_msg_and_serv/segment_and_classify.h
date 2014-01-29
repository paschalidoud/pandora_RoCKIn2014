/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by gensrv_cpp from file /home/paschalidoud/pandora_RoCKIn2014/src/object_classification_msg/src/soc_msg_and_serv/srv/segment_and_classify.srv
 *
 */


#ifndef SOC_MSG_AND_SERV_MESSAGE_SEGMENT_AND_CLASSIFY_H
#define SOC_MSG_AND_SERV_MESSAGE_SEGMENT_AND_CLASSIFY_H

#include <ros/service_traits.h>


#include <soc_msg_and_serv/segment_and_classifyRequest.h>
#include <soc_msg_and_serv/segment_and_classifyResponse.h>


namespace soc_msg_and_serv
{

struct segment_and_classify
{

typedef segment_and_classifyRequest Request;
typedef segment_and_classifyResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct segment_and_classify
} // namespace soc_msg_and_serv


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::soc_msg_and_serv::segment_and_classify > {
  static const char* value()
  {
    return "ba1a61e6bd27f094c2048ad9a6c22150";
  }

  static const char* value(const ::soc_msg_and_serv::segment_and_classify&) { return value(); }
};

template<>
struct DataType< ::soc_msg_and_serv::segment_and_classify > {
  static const char* value()
  {
    return "soc_msg_and_serv/segment_and_classify";
  }

  static const char* value(const ::soc_msg_and_serv::segment_and_classify&) { return value(); }
};


// service_traits::MD5Sum< ::soc_msg_and_serv::segment_and_classifyRequest> should match 
// service_traits::MD5Sum< ::soc_msg_and_serv::segment_and_classify > 
template<>
struct MD5Sum< ::soc_msg_and_serv::segment_and_classifyRequest>
{
  static const char* value()
  {
    return MD5Sum< ::soc_msg_and_serv::segment_and_classify >::value();
  }
  static const char* value(const ::soc_msg_and_serv::segment_and_classifyRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::soc_msg_and_serv::segment_and_classifyRequest> should match 
// service_traits::DataType< ::soc_msg_and_serv::segment_and_classify > 
template<>
struct DataType< ::soc_msg_and_serv::segment_and_classifyRequest>
{
  static const char* value()
  {
    return DataType< ::soc_msg_and_serv::segment_and_classify >::value();
  }
  static const char* value(const ::soc_msg_and_serv::segment_and_classifyRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::soc_msg_and_serv::segment_and_classifyResponse> should match 
// service_traits::MD5Sum< ::soc_msg_and_serv::segment_and_classify > 
template<>
struct MD5Sum< ::soc_msg_and_serv::segment_and_classifyResponse>
{
  static const char* value()
  {
    return MD5Sum< ::soc_msg_and_serv::segment_and_classify >::value();
  }
  static const char* value(const ::soc_msg_and_serv::segment_and_classifyResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::soc_msg_and_serv::segment_and_classifyResponse> should match 
// service_traits::DataType< ::soc_msg_and_serv::segment_and_classify > 
template<>
struct DataType< ::soc_msg_and_serv::segment_and_classifyResponse>
{
  static const char* value()
  {
    return DataType< ::soc_msg_and_serv::segment_and_classify >::value();
  }
  static const char* value(const ::soc_msg_and_serv::segment_and_classifyResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SOC_MSG_AND_SERV_MESSAGE_SEGMENT_AND_CLASSIFY_H