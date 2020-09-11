int startX=160;
int startY=250;
int endX=160;
int endY=250;
void setup()
{
  size(500, 500);
  background (25, 25, 35);
  strokeWeight(3);
}
void draw()
{  
  noStroke();
  fill(255);
  rect(0, 220, 115, 50);
  triangle(160, 245, 115, 220, 115, 270);
  fill(10);
  rect(105, 220, 10, 50);
  
  stroke((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
  while (endY<350) {
    endX= startX + ((int)(Math.random()*9)+1);
    endY= startY +((int)(Math.random()*19)-9);
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  startX=160;
  startY=250;
  endX=160;
  endY=250;
  if (mousePressed) {
    stroke((int)(Math.random()*500), (int)(Math.random()*500), (int)(Math.random()*500));
  }

}
