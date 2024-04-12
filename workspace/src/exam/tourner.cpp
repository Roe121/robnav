#include "ros/ros.h"
#include <std_msgs/Float32.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <vector>
#include <tf/tf.h>
#include <std_msgs/Bool.h>

int sens;
float amplitude=-1;
double curYaw,debutYaw;
bool jeTourne=false;
bool recule;
bool mvmtFini(){

    if(sens == 1){ // Si on est en train de tourner dans le sens anti-horaire
        double angleParcouru;
        if(debutYaw - curYaw <= 0.1)
            angleParcouru = curYaw-debutYaw;
        else
            angleParcouru = 2*M_PI - debutYaw + curYaw;

        return angleParcouru > amplitude;
    }
    else{ // Si on est en train de tourner dans le sens horaire
        double angleParcouru;
        if(debutYaw - curYaw >= -0.1)
            angleParcouru = debutYaw-curYaw;
        else
            angleParcouru = 2*M_PI - curYaw + debutYaw;

        return angleParcouru > amplitude;
    }
}

void odomCb(const nav_msgs::Odometry& pos){
    tf::Quaternion q(pos.pose.pose.orientation.x,pos.pose.pose.orientation.y,pos.pose.pose.orientation.z,pos.pose.pose.orientation.w);
    tf::Matrix3x3 m(q);
    double roll,pitch;
    m.getRPY(roll,pitch,curYaw);
}
void reculeCb(const std_msgs::Bool & msg) {
    recule=msg.data;
}
void tournerCb(const std_msgs::Float32& angle){
    // L'angle à fournir doit être compris entre -2PI et 2PI
    // et aucun mouvement ne doit être en cours
    if(angle.data > 2*M_PI || angle.data < -2*M_PI || amplitude > 0)return; 

    if(angle.data > M_PI){
        sens = 2;
        amplitude = 2*M_PI-angle.data;
    }
    if(angle.data > 0 && angle.data <= M_PI){
        sens = 1;
        amplitude = angle.data;
    }
    if(angle.data < 0 && angle.data >= -M_PI){
        sens = 2;
        amplitude = -angle.data;
    }
    if(angle.data < -M_PI){
        sens = 1;
        amplitude = 2*M_PI+angle.data;
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "tourner");
    ros::NodeHandle n;
    ros::Publisher pub_cmd = n.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
    ros::Subscriber sub_odom = n.subscribe("/odom",1000,odomCb);
    ros::Subscriber sub_amplitude = n.subscribe("/amplitude",1000,tournerCb);
    ros::Subscriber sub_recule = n.subscribe("/recule",1000,reculeCb);
    ros::Publisher pub_jeTourne=n.advertise<std_msgs::Bool>("/jeTourne",1000);
    ros::Rate loop_rate(100);

    while (ros::ok())
    {
        geometry_msgs::Twist msg;
        if(amplitude > 0 ){ // S'il faut bouger
            jeTourne=true;
            if(sens == 1){
                msg.angular.z = 0.5; // 0.5rad/sec
                
            }else{
                msg.angular.z = -0.5; // -0.5rad/sec
            }
            if(mvmtFini()){
                debutYaw = curYaw;
                amplitude = -1;
                jeTourne=false;
            }
        }else if(recule){
            msg.linear.x=-0.1;
        }
        else{
            jeTourne=false;
            debutYaw = curYaw;
        }
        std_msgs::Bool msg2;
        msg2.data=jeTourne;
        pub_jeTourne.publish(msg2);
        pub_cmd.publish(msg); // On envoie la commande
        ros::spinOnce();
        loop_rate.sleep();
    }


    geometry_msgs::Twist msg;
    pub_cmd.publish(msg); // On arrête le robot

    return 0;
}
