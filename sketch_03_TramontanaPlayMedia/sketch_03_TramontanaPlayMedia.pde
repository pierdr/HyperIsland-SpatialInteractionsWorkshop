//TRAMONTANA PLAY MEDIA
//pierdr.com - Hyper Island - Nov18

import tramontana.library.*;
import websockets.*;

Tramontana device;

void setup()
{
  device = new Tramontana(this, "172.18.12.64");

}
void draw()
{
  rect(20,20,100,100);
}
void keyPressed()
{
  if(key == 'a')
  {
    device.showImage("http://www.wallpapermaiden.com/wallpaper/800/download/1080x1920/stockholm-sweden-river.jpg");
  }
  else if(key == 'd')
  {
    device.showImage("board.jpg");
  }
  else if(key == 'f')
  {
    device.playVideo("museum.mp4");
  }
  else if(key == 'g')
  {
    device.playAudio("laser.mp3");
  }
}
