//TRAMONTANA AS INPUT
//pierdr.com - Hyper Island - Nov18

import websockets.*;
import tramontana.library.*;

Tramontana device;
float pinkPony =0;
void setup()
{
  device = new Tramontana(this, "172.18.12.64");
  device.subscribeAttitude(12);
}
void draw()
{
  fill(pinkPony);
  rect(20,20,100,100);
}
void onAttitudeEvent(String ipAddress, float yaw, float pitch, float roll){
  pinkPony = (int)map(yaw,-1.0,1.0,0,255);
}
