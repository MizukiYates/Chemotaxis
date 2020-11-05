//declare bacteria variables here   
Bacteria One;
Bacteria [] bacteriaArray;
 void setup()   
 {     
   size(1000,1000);
   frameRate(10);
   One = new Bacteria();
   bacteriaArray = new Bacteria [10];
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
   int red;
   int green;
   int blue;
   Bacteria()
   {
     red = (int)(Math.random()*255) +1;
     green =  (int)(Math.random()*255) +1;
     blue = (int)(Math.random()*255) +1;
     myX = 500;
     myY = 500;
     myColor = color(red,green,blue);
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
