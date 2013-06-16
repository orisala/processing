Maxim maxim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;


void setup()
{
  size(640, 960);
  maxim = new Maxim(this);
  
  player = maxim.loadFile("snare1.wav");
  player.setLooping(false);
  
  player2 = maxim.loadFile("kick1.wav");
  player2.setLooping(false); 
  
  player3 = maxim.loadFile("loop1.wav");
  player3.setLooping(true);
  
  player3.cue(0);
  player3.play();
  
  background(100);  
  
  noStroke();
  fill(100);  
  rect(0,0,width/2,height);
  
  noStroke();
  fill(50);  
  rect(width/2,0,width/2,height);  
}

void draw()
{
//  
}

void mousePressed() {
  float red = map(mouseX, 0, width, 0, 255);
  float blue = map(mouseY, 0, width, 0, 255);
  float green = dist(mouseX,mouseY,width/2,height/2);  
  float speed = dist(pmouseX, pmouseY, mouseX, mouseY);
  float alpha = map(speed, 0, 20, 0, 10);
         
  if (mouseX > width/2) {  
    player2.cue(0);    
    player2.play();       
    
    noStroke();
    fill(red, green, blue);  
    rect(width/2,0,width/2,height);
  } 
  else {
    noStroke();
    fill(red, green, blue);  
    rect(0,0,width/2,height);      
  
    player.cue(0);
    player.play();   
  } 
  
}

void mouseReleased()
{
         
}




