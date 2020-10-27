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
   One.move();
   One.show();
 }  
 class Bacteria    
 {     
   int myX, myY;
   Bacteria()
   {
     myX = 100;
     myY = 100;
   }
   void move()
   {
     myX = myX + (int)(Math.random()*50)-15;
     myY = myY + (int)(Math.random()*50)-20;
   }
   void show()
   {
     ellipse(myX,myY,50,50);
   }
 }    
