class Ball{
  
  float locationX;  // Location of shape
  float locationY;
  float deltaX;
  float deltaY;
  float rad;
  color c;
  int state;
  
  Ball(){
      float r = random(256);
      float g = random(256);
      float b = random(256);
      c = color(r,g,b);
      rad = 10;
      locationX = random((width-r)+r/2);
      locationY = random(height - r)+r/2;
      deltaX = random(10)-5;
      deltaY = random(10)-5;
  }
  
  void move(){
     locationX +=deltaX;
     locationY += deltaY;
     bounce();
  }
  
   void bounce(){
      if(locationX > width || locationX < 0){
         deltaX = deltaX * -1;   
      }
      if(locationY > height || locationY < 0){
         deltaY = deltaY * -1; 
      }
   }
   
   void display(){
      fill(c);
      ellipse(locationX, locationY, rad, rad); 
   }
}