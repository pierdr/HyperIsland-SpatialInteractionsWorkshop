//MULTIPLE TRAMONTANA
//pierdr.com - Hyper Island - Nov18

import websockets.*;
import tramontana.library.*;

Tramontana device1;
Tramontana device2;

void setup()
{
  device1 = new Tramontana(this, "172.18.12.76");
  device2 = new Tramontana(this, "172.18.12.64");
  
  device2.subscribeDistance();
}
void draw()
{
  
}
void keyPressed()
{
  device1.setColor(255,0,255,0);
  device2.setColor(255,0,255,255);
}
void onDistanceEvent(String ip, int v)
{
  if(v == 1)
  {
    //Use float values between 0.0 and 1.0 to set a random color of one tramontana device
    device1.setColor(random(1),random(1),random(1),1.0);
  }
  else{
    //Use RGB values to set a color to a tramontana device. The last value sets the brightness of the screen.
    device1.setColor(255,200,10,255);
  }
}
