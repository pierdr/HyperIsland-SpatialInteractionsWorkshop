/****
tramontanaCV - a toolkit for sensing people in space with phones.
With tramontanaCV you will be able to harness the computing power of your phone to sense people in space and broadcast the result to a Processing sketch.. 
You can download the app here: https://itunes.apple.com/us/app/libreTSPSWP/id1276040950?mt=8
made by Pierluigi Dalla Rosa
***/

import websockets.*;
import tramontanaCV.*;

tramontanaCV hello;
LBBoxContainer container;

void setup(){
  size(320,576);
  hello = new tramontanaCV(this, "172.18.12.64");
}

void draw(){
  background(255);
  if(container!=null)
  {
    if(container.nBBoxes>0)
    {
      background(255,0,0);
    }
    else
    {
      background(0);
    }
  }
}

void onBoundingBoxReceived(LBBoxContainer c, int nBlobs, String ip){
  container = c; 
}
