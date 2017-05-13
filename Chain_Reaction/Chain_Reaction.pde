Ball[] balls;
boolean mouseToggle;


void setup(){
   size(640, 360);
   balls = new Ball[25];
   for(int i = 0; i < balls.length; i ++){
    balls[i] = new Ball(); 
   }
}
 
 
//runs the code that makes the balls collide and blow up
void runExplosionMode(){
      if (mousePressed == true){
       mouseToggle = !mouseToggle;
       System.out.println("was " + !mouseToggle + " now " + mouseToggle);
    }
  if (mouseToggle){
     for(Ball b1:balls){
        b1.grow(); 
     }
  }
}

void draw(){
  background(0);
  for(Ball b1: balls){
    b1.display();
    b1.move();
  }
  runExplosionMode();
}