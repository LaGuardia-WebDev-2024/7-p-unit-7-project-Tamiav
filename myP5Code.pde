//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(920, 400); 
       
  
}

//🎯Variable Declarations Go Here
var xMove = 0;
var yMove = 0;
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    yMove -= 1;    
  }
  else{
    if(yMove < 0) {yMove +=1}
  }
  fill(242, 123, 189);
  rect(2,300,1000,700);
  noStroke();
  fill(71, 102, 59);
  
  rect(10+xMove,250+yMove,20,50);
    rect(30+xMove,260+yMove,30,15);
        rect(-20+xMove,260+yMove,30,15);
            rect(45+xMove,240+yMove,15,20);
                   rect(-20+xMove,270+yMove,15,20);
    strokeWeight(1);
    stroke(0,0,0);
    fill(166, 174, 191);
    arc(300, 300, 40, 40,radians(180), radians(360));
    arc(150, 300, 40, 40,radians(180), radians(360));
    arc(450, 300, 40, 40,radians(180), radians(360));
    arc(650, 300, 40, 40,radians(180), radians(360));
    arc(850, 300, 40, 40,radians(180), radians(360));
  
    // check points
    fill(255, 245, 116);
    rect(200,100,30,30);
    rect(350,100,30,30);
    rect(550,100,30,30);
    fill(22, 196, 127);
    rect(800,100,70,50);
    fill (141, 119, 171);
    rect(800,100,10,200);
  //🎯Animation Code Goes Here
  xMove += 1
  
 if(xMove > 1000){xMove = -50}
 

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
