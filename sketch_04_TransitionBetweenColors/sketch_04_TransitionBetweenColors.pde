//TRANSITION BETWEEN TWO COLORS USING TRAMONTANA INPUT
//pierdr.com - Hyper Island - Nov18

import websockets.*;
import tramontana.library.*;
//0  246  229 cyan
//80  54  130 dark purple
Tramontana device;

float redC     = 0;
float greenC   = 0;
float blueC    = 0;

void setup()
{
  device = new Tramontana(this, "172.18.12.64");
  device.subscribeAttitude(5);
}
void draw()
{
  fill(redC,greenC,blueC);
  rect(20,20,100,100);
}
void onAttitudeEvent(String ipAddress, float yaw, float pitch, float roll){
  println(yaw);
  redC    = map(yaw,-PI,PI,0,80);
  greenC  = map(yaw,-PI,PI,246,54);
  blueC   = map(yaw,-PI,PI,229,130);
}
