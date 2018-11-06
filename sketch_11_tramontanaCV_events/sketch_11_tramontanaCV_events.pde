/****
tramontanaCV - a toolkit for sensing people in space with phones.
With tramontanaCV you will be able to harness the computing power of your phone to sense people in space and broadcast the result to a Processing sketch.. 
You can download the app here: https://itunes.apple.com/us/app/libreTSPSWP/id1276040950?mt=8
made by Pierluigi Dalla Rosa
***/

import websockets.*;
import tramontanaCV.*;

tramontanaCV hello;
int prevNBBox = 0;
int bgColor = 0;


void setup(){
  size(320,576);
  hello = new tramontanaCV(this, "172.18.12.64");
}

void draw(){
  background(bgColor);
  
}

void onBoundingBoxReceived(LBBoxContainer c, int nBBoxes, String ip){
  if(prevNBBox != nBBoxes)
  {
    prevNBBox = nBBoxes;
    println("num blob changed!");
    if(nBBoxes>0)
    {
      bgColor = 0;
    }
    else
    {
      bgColor = 255;
    }
  }
}
