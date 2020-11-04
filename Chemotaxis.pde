//declare bacteria variables here   
Bacteria One;
Bacteria [] bacteriaArray;
 void setup()   
 {     
   size(1000,1000);
   frameRate(10);
   One = new Bacteria();
   bacteriaArray = new Bacteria [5];
   for(int i = 0; i < bacteriaArray.length; i++)
   {
     bacteriaArray[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria   
   background(0);
   for(int i = 0; i < bacteriaArray.length; i++)
   {
     bacteriaArray[i].show();
     bacteriaArray[i].move();
   }
 }  
 class Bacteria    
 {     
   int myX, myY;
   int myColor;
   Bacteria()
   {
     myX = 500;
     myY = 500;
     myColor = color(0,255,0);
   }
   void move()
   {
     myX = myX + (int)(Math.random()*50)-24;
     myY = myY + (int)(Math.random()*50)-24;
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,50,50);
   }
 }    
