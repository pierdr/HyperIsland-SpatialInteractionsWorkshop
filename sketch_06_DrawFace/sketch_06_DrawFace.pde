//DRAW FACE
//pierdr.com - Hyper Island - Nov18

void setup()
{
  size(200,200);
  background(0);

}
void draw()
{
  background(0);
  drawAFace(mouseX);
 
}

void drawAFace(int offsetX)
{
  //EYES
  ellipse(20+offsetX,20,10,10);
  ellipse(120+offsetX,20,10,10);
  //NOSE
  ellipse(60+offsetX,50,5,5);
  //MOUTH
  stroke(255);
  line(20+offsetX,100,120+offsetX,100);
}
