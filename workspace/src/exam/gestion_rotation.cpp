#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <nav_msgs/Odometry.h>
#include <tf/tf.h>
#include <std_msgs/Bool.h>

double curYaw;
float angle;
bool caTourne;
float ind;
bool recule;
void odomCb(const nav_msgs::Odometry& pos){
    tf::Quaternion q(pos.pose.pose.orientation.x,pos.pose.pose.orientation.y,pos.pose.pose.orientation.z,pos.pose.pose.orientation.w);
    tf::Matrix3x3 m(q);
    double roll,pitch;
    m.getRPY(roll,pitch,curYaw);
}
void mystereCb(const std_msgs::Float32& angle){
    ind=angle.data*M_PI*2/360;
}
void mysteredistCb(const std_msgs::Float32& dist){
    if(dist.data>1){
        recule=true;
    }else{
        recule=false;
    }
    
}
void caTourneCb(const std_msgs::Bool & msg) {
    caTourne=msg.data;
}
int main(int argc, char ** argv){
    ros::init(argc,argv,"gestion_rotation");
    ros::NodeHandle n;
    ros::Subscriber submystere = n.subscribe("/mystere",1000,mystereCb);
    ros::Subscriber submysteredist = n.subscribe("/mysteredist",1000,mysteredistCb);
    ros::Publisher pub_amplitude = n.advertise<std_msgs::Float32>("/amplitude", 1000);
    ros::Subscriber sub_caTourne =n.subscribe("/jeTourne",1000,caTourneCb);
    ros::Publisher pub_recule = n.advertise<std_msgs::Bool>("/recule", 1000);
    ros::Rate loop_rate(100);

    while(ros::ok()){
        std_msgs::Float32 msg;
        std_msgs::Bool msg2;
        msg.data = ind;
        msg.data =recule;
        if(!caTourne){
            pub_amplitude.publish(msg);
            pub_recule.publish(msg);
        }
        ros::spinOnce();
        loop_rate.sleep();
    }

}