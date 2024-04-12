#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Bool.h>

int ind;
float dist;
bool caTourne;

void scanCb(const sensor_msgs::LaserScan & msg) {
    float m = msg.ranges[0];

    ind = 0;
    for(int i=1;i<360;i++){
        if(msg.ranges[i]<m){
            m = msg.ranges[i];
            ind = i;
        }
    }
    dist=msg.ranges[180];
}
void caTourneCb(const std_msgs::Bool & msg) {
    caTourne=msg.data;
}
int main(int argc, char ** argv){
    ros::init(argc,argv,"detection_obstacles");
    ros::NodeHandle n;

	ros::Subscriber sub_laser = n.subscribe("/scan", 1000,scanCb);
	ros::Publisher pub_mystere = n.advertise<std_msgs::Float32>("/mystere", 1000);
    ros::Publisher pub_mysteredist = n.advertise<std_msgs::Float32>("/mysteredist", 1000);
    ros::Subscriber sub_caTourne =n.subscribe("/jeTourne",1000,caTourneCb);
    ros::Rate loop_rate(100);

    while(ros::ok()){
        std_msgs::Float32 msg;
        msg.data = ind;
        
        if(!caTourne)
            pub_mystere.publish(msg);
        msg.data = dist;
        
        if(!caTourne)
            pub_mysteredist.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }

}