

import deadpixel.keystone.*;

Keystone ks;
CornerPinSurface surface;
CornerPinSurface surface1;
CornerPinSurface surface2;

PGraphics offscreen;
PGraphics offscreen1;
PGraphics offscreen2;

PVector surfaceMouse;

void setup() {
  size(800, 600, P3D);

  ks = new Keystone(this);
  surface  = ks.createCornerPinSurface(400, 300, 5);
  surface1 = ks.createCornerPinSurface(400, 300, 5);
  surface2 = ks.createCornerPinSurface(400, 300, 5);
  
  offscreen  = createGraphics(400, 300, P3D);
  offscreen1 = createGraphics(400, 300, P3D);
  offscreen2 = createGraphics(400, 300, P3D); 
}

void draw() {
   background(0);

   surfaceMouse = surface.getTransformedMouse();
  
  offscreen.beginDraw();
  offscreen.background(255);
  offscreen.ellipse(20,20,100,100);
  offscreen.fill(0, 255, 0);
  offscreen.ellipse(surfaceMouse.x, surfaceMouse.y, 75, 75);
  offscreen.endDraw();
  
 
  offscreen1.beginDraw();
  offscreen1.background(128,128,0);
  offscreen1.fill(255,0,0);
  offscreen1.rect(20,60,40,40);
  offscreen1.endDraw();
  
  
  offscreen2.beginDraw();
  offscreen2.background(128,0,128);
  offscreen2.fill(0,128,0);
  offscreen2.ellipse(20,60,40,40);
  offscreen2.endDraw();
  
  surface.render(offscreen);
  surface1.render(offscreen1);
  surface2.render(offscreen2);
}

void keyPressed() {
  switch(key) {
  case 'c':
    // enter/leave calibration mode, where surfaces can be warped 
    // and moved
    ks.toggleCalibration();
    cursor();
    break;

  case 'l':
    // loads the saved layout
    ks.load();
    break;

  case 's':
    // saves the layout
    ks.save();
    break;
  }
}
