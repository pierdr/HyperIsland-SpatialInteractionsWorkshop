//TRAMONTANA OUTPUT
//pierdr.com - Hyper Island - Nov18

import tramontana.library.*;
import websockets.*;
Tramontana device;
int rectSize;
void setup()
{
  size(200,200);
  rectSize=10;
  device = new Tramontana(this,"172.18.12.64");
}
void draw()
{
  rect(10,10,rectSize,rectSize);
}
void keyPressed()
{
   rectSize = 100;
   device.makeVibrate();
  background(128);
}
void keyReleased()
{
  rectSize = 10;
  background(128);
}
