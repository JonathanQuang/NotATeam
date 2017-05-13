Ball[] balls;

void setup(){
   size(640, 360);
   balls = new Ball[25];
   for(int i = 0; i < balls.length; i ++){
    balls[i] = new Ball(); 
   }
}

void draw(){
  background(0);
  for(Ball b1: balls){
    b1.display();
    b1.move();
  }
}