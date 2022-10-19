
Skipper [] chillytown;

void setup(){
  size(800, 800);
  background(0);
  chillytown = new Skipper[100];
  int i=0;
  while (i<100){
    chillytown[i] = new Skipper((int)(Math.random()*750), (int)(Math.random()*750));
    
    i++;
  }
  
}

void draw(){
 background(0);

 for(int i=0; i<chillytown.length;i++){
   chillytown[i].skip();
   chillytown[i].show();
 //for(int i=0; i<chillytown.length;i++){
 //  for(int i=0; i<chillytown.length;i++){
 //    if(dist(chillytown[i].myX, chillytown[i].myY, chillytown[i+1].myX, chillytown[i].myY)){
       
     }
 }
 
  






class Skipper
{
  int myX, myY;
  boolean ate;
  Skipper(int x, int y)
  {
    myX=x;
    myY=y;
    ate=false;
  }
  void skip(){
    myX=myX+(int)(Math.random()*7)-3;
    myY=myY+(int)(Math.random()*7)-3;
  }
  
  void show(){
    if(dist(mouseX, mouseY, myX, myY)<10){
      ate=true;
    }
    
    if(ate==false){
        fill(193, 154, 107);
 ellipse(myX, myY, 100, 100);
 fill(123, 63, 0);
 ellipse(myX, myY-20, 10, 10);//chocolate chips
 ellipse(myX-10, myY-40, 10, 10);
 ellipse(myX+30, myY+10, 10, 10);
 ellipse(myX, myY+40, 10, 10);
 ellipse(myX+10, myY+10, 10, 10);
 ellipse(myX-40, myY-20, 10, 10);
 ellipse(myX-25, myY+20, 10, 10);
 ellipse(myX+35, myY-10, 10, 10);

    }
   
  
  
  }
}
  
 
